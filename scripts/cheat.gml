#define cheat
///cheat step
if cheatTimer > 0 {
    cheatTimer --
    if string_length(cheatString) > cheatMaxLength {
        cheatString = string_copy(cheatString, 2, cheatMaxLength + 1)
    }
    //check the cheats
    //banana cheat
    if cheatCheck("banana"){

    }
    
}
else {
    cheatString = ""
}

#define cheatInit
///cheatInit()
cheatTimer = 0
cheatString = "herpderp"
cheatMaxLength = 10

#define cheatImput
var a = keyboard_string,
    b = string_length(a)

a = string_copy(a, b, 1);

cheatString += a

#define cheatCheck
///check if the code is in
var a = argument0,
    b = string_count(a, cheatString)
    
if b >= 1 {
    return true
}
else {
    return false
}

#define floatyCreate
instance_create(irandom(room_width),irandom(room_height), oFloaty)
