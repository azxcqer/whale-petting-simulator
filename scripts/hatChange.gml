#define hatChange
//hatChange(hat)
global.hat = true
oHat.sprite_index = argument0

#define randomHat
///randomHat(current Hat)
var a = sHatMarker1,
    b = sHatMarker2,
    oldHat = curHat,
    //randomizing inside the values range
    c = notInciRandom_range(a,b);
    
while c = oldHat {
    c = notInciRandom_range(a,b)
}

hatChange(c)

#define randomHatRange
///randomHatRange(top range, bot range)
var a = argument0,
    b = argument1,
    oldHat = curHat,
    //randomizing inside the values range
    c = irandom_range(a,b);
    
while c = oldHat {
    c = irandom_range(a,b)
}

hatChange(c)
