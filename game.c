#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "cactus.h"
#include "cactus2.h"

// Variables
CACTUS cacti[CACTICOUNT];
int cactusFlip;
int addElement;
int activeCac;
ELEMENT elements[ECOUNT];
int selectCount;
EITEM items[EITEMCOUNT];
int itemsNeeded[3];


// Initializes game
void initGame() {

    // initialize game objects
    initCactus();
    initElements();
    initEItems();
    
    // initializing variables
    selectCount = 0;
    activeCac = 0;
    addElement = 0;
    cactusFlip = 0;
    for (int i=0; i < 3; i++) {
        itemsNeeded[i] = 5;
    }

    // Load in colors

    // Game colors
    u16 colors[CT] = {BLACK, MAGENTA, CYAN, GREEN, RED, WHITE, GRAY};

    // Plant colors
    DMANow(3, cactusPal, PALETTE, (7 | DMA_DESTINATION_INCREMENT | DMA_SOURCE_INCREMENT));

    // Game colors
    for (int i = 0; i < CT; i++) {
        PALETTE[256-CT+i] = colors[i];
    }


}

// Helper to initialize cactus
void initCactus() {

    for (int i = 0; i < CACTICOUNT; i ++) {
        cacti[i].height = 60 - (i * 4);
        cacti[i].width = 48;
        cacti[i].active = i ^ 1;
        cacti[i].row = PLANTBOXHEIGHT - cacti[i].height;
        cacti[i].col = (PLANTBOXWIDTH + cacti[i].width) >> 2;
    }

    cacti[0].bp = cactusBitmap;
    cacti[1].bp = cactus2Bitmap;

}

// Helper to initialize elements
void initElements() {

    for (int i = 0; i < ECOUNT; i++) {
        elements[i].row = 30 + i*25;
        elements[i].col = 180;
        elements[i].height = 10;
        elements[i].width = 50;
        elements[i].active = ((!i) ? 1 : 0);
        elements[i].color = ((256 - CT + i + 1));
    }

}

// Helper to initiate element items
void initEItems() {
    
    for (int i = 0; i < EITEMCOUNT; i++) {
        items[i].height = 4;
        items[i].width = 4;
        items[i].row = 0;
        items[i].col = 0;
        items[i].vel = 2;
        items[i].color = WHITEID;
        items[i].active = 0;
    }

}


// Updates game
void updateGame() {

    cactusFlip++;
    addElement++;
    updateCactus();
    updateSelect();

    // If user presses a, drop an item
    // aka initalize first non active item in pool items
    if (BUTTON_PRESSED(BUTTON_A)) {
        dropItems();
    }

    for (int i = 0; i < EITEMCOUNT; i++) {
        updateItems(&items[i]);
    }

    incrementItem();

}

// Helper to update cactus
void updateCactus() {

    if (cactusFlip == 50) {
        flipCacti();
    }

}

// Helper to increment selectCount
void updateSelect() {

    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        selectCount = (selectCount + 1) % 3;
    } else if (BUTTON_PRESSED(BUTTON_UP)) {
        if (selectCount == 0) {
            selectCount = 2;
        } else {
            selectCount -= 1;
        }
    }

}

// Helper that drops Items
void dropItems() {

    for (int i = 0; i < EITEMCOUNT; i++) {
        
        // Finding first non-active item
        if (!(items[i].active)) {
            
            // orient
            // replace with rand call
            items[i].col = rand() % 150 + 10;
            items[i].row = 0;
            items[i].color = elements[selectCount].color;

            // set picked item active
            items[i].active = 1;

            // leave loop
            break;

        }
    }
}

// Helper to update items
void updateItems(EITEM* e) {
    if (e->active) {
        e->row += e->vel;
        
        // if item collides with bottom of plant box, turn off
        if (e->row + e->height >= PLANTBOXHEIGHT) {
            e->active = 0;
        }

        // if item collides with active cactus, turn off
        if (collision(cacti[activeCac].col, cacti[activeCac].row, cacti[activeCac].width, cacti[activeCac].height, e->col, e->row, e->width, e->height)) {
            e->active = 0;
            
            itemsNeeded[selectCount] -= (itemsNeeded[selectCount] == 0 ? 0 : 1);

        }
    }
}

// Helper that increments random element
void incrementItem() {
    if (addElement == 100) {
        itemsNeeded[rand() % 3] += 1;
        addElement = 0;
    }

}

// Helper that 'animates' the cactus
void flipCacti() {

    for (int i = 0; i < CACTICOUNT; i++) {
        if (cacti[i].active) {
            cacti[i].active = 0;
        } else {
            cacti[i].active = 1;
            activeCac = i;
        }
        cactusFlip = 0;
    }

}

// Draws game
void drawGame() {

    fillScreen4(BLACKID);

    // Draw the active cacti
	for (int i = 0; i < CACTICOUNT; i++) {
        drawCacti(&cacti[i]);
    }

    drawSelect();

    drawPlantBox();
    drawElements();

    for (int i = 0; i < EITEMCOUNT; i++) {
        drawItems(&items[i]);
    }

}

// Helper to draw plant
void drawCacti(CACTUS* c) {
    if (c->active) {
        drawImage4(c->col, c->row, c->width, c->height, c->bp);
    }
}

// Helper to draw selection
void drawSelect() {
    drawRect4(180 - 2, elements[selectCount].row - 2, 50 + 4, 10 + 4, WHITEID);
}

// Helper to draw the plant box
void drawPlantBox() {
    drawRect4(0, PLANTBOXHEIGHT, SCREENWIDTH, 2, GRAYID);
    drawRect4(PLANTBOXWIDTH, 0, 2, PLANTBOXHEIGHT + 2, GRAYID);
}

// Helper function to draw elements
void drawElements() {
    for (int i = 0; i < ECOUNT; i++) {
        drawRect4(elements[i].col, elements[i].row, elements[i].width, elements[i].height, elements[i].color);
    }
}

// Helper to draw items
void drawItems(EITEM* e) {
    if (e->active) {
        drawRect4(e->col, e->row, e->width, e->height, e->color);
    }
}