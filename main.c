#include <stdlib.h>
#include <stdio.h>
#include "game.h"
#include "myLib.h"
#include "cactiBG.h"
#include "text.h"


// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();

// States
enum {START, GAME, PAUSE, WIN};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Text Buffer
char buffer[41];

int main() {

    initialize();

    while(1) {

        // Update buttons
        oldButtons = buttons;
        buttons = BUTTONS;

        // States
        switch(state) {

            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
        }

    }
}

// Initialize GBA
void initialize() {

    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;

    goToStart();
}

// Sets up the start state
void goToStart() {

    // Setting up title screen
    DMANow(3, cactiBGPal, PALETTE, (256 | DMA_DESTINATION_INCREMENT | DMA_SOURCE_INCREMENT));
    drawFullscreenImage4(cactiBGBitmap);

    // width 84
    drawRect4(76, 74, 88, 12, 0);
    sprintf(buffer, "Feed the plant");
    drawString4(78, 76, buffer, 39);

    waitForVBlank();
    flipPage();
    state = START;

}

// Runs every frame of the start state
void start() {

    waitForVBlank();

    // When start button pressed, start the game
    if (BUTTON_PRESSED(BUTTON_START)) {

        initGame();
        goToGame();

    }
}

// Sets up the game state
void goToGame() {

    state = GAME;

}

// Runs every frame of the game state
void game() {

    updateGame();
    drawGame();

    sprintf(buffer, "Plant happiness pointz: %d", 0);
    drawString4(8, 135, buffer, CYANID);
   
    waitForVBlank();
    flipPage();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToPause();
    else if (BUTTON_PRESSED(BUTTON_B))
        goToWin();
}

// Sets up the pause state
void goToPause() {

    fillScreen4(GRAYID);

    // width 72
    sprintf(buffer, "Game paused.");
    drawString4(84, 66, buffer, BLACKID);

    waitForVBlank();
    flipPage();

    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
}

// Sets up the win state
void goToWin() {

    fillScreen4(CYANID);

    // width 48
    sprintf(buffer, "You win!");
    drawString4(98, 66, buffer, BLACKID);

    waitForVBlank();
    flipPage();

    state = WIN;
}

// Runs every frame of the win state
void win() {

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}