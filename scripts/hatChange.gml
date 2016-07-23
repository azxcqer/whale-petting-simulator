#define hatChange
//hatChange(hat)
global.hat = true
oHat.sprite_index = argument0

#define randomHat
///randomHat(current Hat)
randomHatRange(sHatMarker1, sHatMarker2)

#define randomHatRange
///randomHatRange(top range, bot range)
var a = argument0,
    b = argument1,
    oldHat = curHat,
    //randomizing inside the values range
    c = notInciRandom_range(a,b);
    
while c = oldHat {
    c = notInciRandom_range(a,b)
}

hatChange(c)
