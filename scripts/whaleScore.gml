#define whaleScore
if whalesAdded < scoreLvl {
    var a = scoreLvl - whalesAdded;
    whalesAvail += a
    whalesTotal += a
    whalesAdded = whalesTotal
}

#define whaleScoreInit
///how many whales were already added to be used
whalesAdded = 1
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
    var i;
    for (i = 0; i < whalesAvail; i++){
        draw_sprite_ext(whaleScoreIco, 0, 0  + (i * whaleScoreIcoSpacing * whaleScoreIcoSize), 0, whaleScoreIcoSize, whaleScoreIcoSize,0,c_white,1)
    }
}
