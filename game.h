// Cactus struct
typedef struct {
    int row;
    int col;
    int height;
    int width;
    unsigned short* bp;
    int active;
} CACTUS;

// Element struct
typedef struct {
    int row;
    int col;
    int height;
    int width;
    unsigned short color;
    int active;
} ELEMENT;

// Game color stuff
#define CT 7
enum {BLACKID=(256-CT), MAGENTAID, CYANID, GREENID, REDID, WHITEID, GRAYID};
extern unsigned short colors[CT];

// Contants
#define PLANTBOXWIDTH 170
#define PLANTBOXHEIGHT 120
#define CACTICOUNT 2
#define ECOUNT 3

// Variables
extern CACTUS cacti[CACTICOUNT];
int cactusFlip;
int selectCount;
extern ELEMENT elements[ECOUNT];

// Prototypes
void initGame();
void initCactus();
void initElements();
void updateGame();
void updateCactus();
void updateSelect();
void flipCacti();
void drawGame();
void drawCacti(CACTUS* c);
void drawPlantBox();
void drawElements();
void drawSelect();