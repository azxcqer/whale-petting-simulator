#define whaleScore
if whalesAdded < scoreLvl {
    var a = scoreLvl - whalesAdded;
    whalesAvail += a
    whalesTotal += a
    whalesAdded = whalesTotal
}

#define whaleScoreInit
///how many whales were already added to be used
whalesAdded = 0
//total of whales petted
whalesTotal = 1
//available whales
whalesAvail = 0
//display icon
whaleScoreIco = spWhaleIco
//the size to resize it
whaleScoreIcoSize = 1
//the spacing between icons
whaleScoreIcoSpacing = sprite_get_width(whaleScoreIco)

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
