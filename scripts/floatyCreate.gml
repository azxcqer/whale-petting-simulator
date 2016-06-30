//floatyCreate(floaty to create)

var a = argument0,
    b = instance_create(random(room_width),random(room_height), oFloaty),
    c = random_range(1,4)
    ;
with b {
    sprite_index = a
    image_xscale = c
    image_yscale = c
}
