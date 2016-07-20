#define cheat
///cheat step
if cheatTimer > 0 {
    cheatTimer --
    cheating = true
    //check the cheats

    //debug cheats
    while cheating {
        cheatDebug()
        
        //floaty block
        cheatFloaters()
        
        //hatsblock    
        cheatHats()
        
        //anime block
        cheatAnime()
        
        if cheatCheck("hat"){
            randomHat(oHat.sprite_index)
        }
        
        //game block
        cheatGame()
        
        //cleaner
        if cheatCheck("clean")
        or cheatCheck("clear"){
            with oFloaty {
                instance_destroy()
            }
            global.hat = false
        }
        
        else if cheatCheck("repeat"){
            cheatRepeat()
        }
        cheating = false
    }
}
else {
    cheatString = ""
    keyboard_string = ""
}

#define cheatInit
///cheatInit()
cheatTimer = 0
cheatString = "herpderp"
cheatMaxLength = 25
cheatLast = "This whale should have some hats"
//the variable to break the loop
cheating = true

#define cheatImput
var a = keyboard_string,
    b = string_length(a)

a = string_lower(string_copy(a, b, 1));
if a > cheatMaxLength {
    keyboard_string=""
}

cheatString += a

if string_length(cheatString) > cheatMaxLength {
    cheatString = ""
}

#define cheatCheck
///cheatCheck("word")
var a = argument0,
    b = string_count(a, cheatString)
    
if b >= 1 {
    /*clearing the string so it doesn't trigger more than once
    this is okay for now, but kinda limiting since I can't use, for ex, apple and then applepie,
    unless i check for applepie first, because if I do it will never trigger
    */
    if !string_count("repeat",cheatString) >= 1 {
        cheatLast = a
    }
    cheatString = ""
    keyboard_string = ""
    audio_play_sound(sdPop,5,false)
    cheating = false
    return true
}
else {
    return false
}

#define cheatRepeat
cheatString = cheatLast