#define hatChange
//hatChange(hat)
global.hat = true
oHat.sprite_index = argument0

#define randomHat
///randomHat(current Hat)
randomHatRange(argument0, sHatMarker1, sHatMarker2)

#define randomHatRange
///randomHatRange(old hat, top range, bot range)
var a = argument1,
    b = argument2,
    oldHat = argument0,
    //randomizing inside the values range
    c = notInciRandom_range(a,b);
    
while c = oldHat {
    c = notInciRandom_range(a,b)
}

hatChange(c)
