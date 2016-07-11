#define randCreate
///randCreate(obj)
var a = instance_create(random(room_width), random(room_height), argument0),
    b = random_range(1,4)
    ;
with a {
    resize(b)
    }

return a

#define floatyCreate
///floatyCreate(floaty to create)

var a = argument0,
    b = randCreate(oFloaty),

with b {
    sprite_index = a
}
