#define whaleScore
//checking the score for new whales
if whalesAdded < scoreLvl {
    var a = scoreLvl - whalesAdded;
    whalesAvail += a
    whalesAdded += a
}

//should I tip? 10% will do?
if whalesAvail >= 1{
    whaleTipTimer--
}

#define whaleScoreInit
///how many whales were already added to be used
whalesAdded = 0
//total of whales petted
//it's one because Manphred is already there
whalesTotal = 1
//available whales
whalesAvail = 0
//display icon
whaleScoreIco = spWhaleIco
//the size to resize it
whaleScoreIcoSize = 1
//the spacing between icons
whaleScoreIcoSpacing = sprite_get_width(whaleScoreIco)
//default time to wait before timing
whaleTipTimerDef = 20 * room_speed
//running whaleTipTimer
whaleTipTimer = whaleTipTimerDef
//the tipping var
whaleTipping = false

#define whaleScoreDraw
///whaleScoreDraw

if whalesAvail >= 1{
    var i,
        whales = whalesAvail,
        extra = false
        ;
    if whales > 6 {
        whales = 6
        extra = true
    }
    for (i = 0; i < whales; i++){
        draw_sprite_ext(whaleScoreIco, 0, 0  + (i * whaleScoreIcoSpacing * whaleScoreIcoSize), 0, whaleScoreIcoSize, whaleScoreIcoSize,0,c_white,1)
    }
    if extra{
        draw_text_shadow((1 + whales) * whaleScoreIcoSpacing, 0, "x" + string(whalesAvail), c_white, c_black, 1, fa_center, fa_top)
    }
}

#define whaleScoreTip
if whaleTipTimer <= 0 {
    draw_text_shadow(10, 2 + sprite_get_height(whaleScoreIco), "^ try typing whale", c_white, c_black,1 ,fa_left, fa_top)
}

#define whaleTipReset
whaleTipTimer = whaleTipTimerDef