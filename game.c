#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "cactus.h"
#include "cactus2.h"

// Variables
CACTUS cacti[CACTICOUNT];
int cactusFlip = 0;
ELEMENT elements[ECOUNT];
int selectCount = 0;


// Initializes game
void initGame() {

    // initialize game objects
    initCactus();
    initElements();

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


// Updates game
void updateGame() {

    cactusFlip++;
    updateCactus();
    updateSelect();

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

// Helper that 'animates' the cactus
void flipCacti() {

    for (int i = 0; i < CACTICOUNT; i++) {
        if (cacti[i].active) {
            cacti[i].active = 0;
        } else {
            cacti[i].active = 1;
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