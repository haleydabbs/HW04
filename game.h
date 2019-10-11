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

// Element Items struct
typedef struct {
    int row;
    int col;
    int height;
    int width;
    unsigned short color;
    int vel;
    int active;
} EITEM;


// Game color stuff
#define CT 7
enum {BLACKID=(256-CT), MAGENTAID, CYANID, GREENID, REDID, WHITEID, GRAYID};
extern unsigned short colors[CT];

// Contants
#define PLANTBOXWIDTH 170
#define PLANTBOXHEIGHT 120
#define CACTICOUNT 2
#define ECOUNT 3
#define EITEMCOUNT 5

// Variables
extern CACTUS cacti[CACTICOUNT];
int cactusFlip;
int selectCount;
extern ELEMENT elements[ECOUNT];
extern EITEM items[EITEMCOUNT];
int activeCac;
int addElement;
extern int itemsNeeded[3];

// Prototypes
void initGame();
void initCactus();
void initElements();
void initEItems();
void updateGame();
void updateCactus();
void updateSelect();
void updateItems(EITEM* e);
void flipCacti();
void dropItems();
void incrementItem();
void drawGame();
void drawCacti(CACTUS* c);
void drawPlantBox();
void drawElements();
void drawSelect();
void drawItems(EITEM* e);