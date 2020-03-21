#define randCreate
///randCreate(obj)
//first we create a tringie
var a = instance_create(0, 0, argument0),
    //then we resize it to a random size
    b = random_range(1,4)
    ;
with a {
    resize(b)
    }
    
//now we get it's size
var targetWidth = a.sprite_width,
    targetHeight = a.sprite_height,
//now, we calculate thingies
    xRange = room_width - targetWidth,
    yRange = room_height - targetHeight,
    ;
//finally we move it
a.x = random(xRange)
a.y = random(yRange)
//now we fix what we borked
with a {
    floatyInit()
}
    
return a

#define floatyCreate
///floatyCreate(floaty to create)

var a = argument0,
    b = randCreate(oFloaty),

with b {
    sprite_index = a
}

return b