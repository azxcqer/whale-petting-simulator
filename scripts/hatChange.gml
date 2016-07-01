#define hatChange
//hatChange(hat)
global.hat = true
oHat.sprite_index = argument0

#define randomHat
///randomHat(current Hat)
var a = sHatMarker1,
    b = sHatMarker2,
    oldHat = argument0,
    //randomizing inside the values range
    c = notInciRandom_range(a,b);
    
while c = oldHat {
    c = notInciRandom_range(a,b)
}

hatChange(c)
