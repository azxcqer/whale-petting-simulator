#define cheat
///cheat step
if cheatTimer > 0 {
    cheatTimer --
    //check the cheats
    //floaty block
    //banana cheat
    if cheatCheck("banana"){
        floatyCreate(sBanana);        
    }
    
    else if cheatCheck("apple"){
        floatyCreate(sApple);
    }
    
    else if cheatCheck("goodtime"){
        floatyCreate(sHeart);
    }
    
    else if cheatCheck("badtime"){
        floatyCreate(sBone);
    }
    //hatsblock
    
    else if cheatCheck("tophat"){
        hatChange(sTopHat)
    }
    
    else if cheatCheck("crow"){
        hatChange(sCrow)
    }
    //temp
    else if cheatCheck("gorro"){
        hatChange(sGorro)
    }
    //temp
    else if cheatCheck("coco"){
        hatChange(sCoco)
    }
    
    else if cheatCheck("bow"){
        hatChange(sBow)
    }
    
    else if cheatCheck("fez"){
        hatChange(sFez)
    }
    
    else if cheatCheck("cat"){
        hatChange(sCat)
    }
    
    else if cheatCheck("sombrero"){
        hatChange(sSombrero)
    }
    
    else if cheatCheck("straw"){
        hatChange(sStraw)
    }
    
    else if cheatCheck("bandana"){
        hatChange(sBandana)
    }
    
    //anime block
    else if cheatCheck("luffy"){
        hatChange(sLuffy)
    }
    
    //jojo
    else if cheatCheck("jotaro"){
        hatChange(sJotaro)
    }
    
    else if cheatCheck("zepelli"){
        hatChange(sZepelli)
    }
    
    else if cheatCheck("caesar"){
        hatChange(sCaesar)
    }
    
    else if cheatCheck("egg"){
        hatChange(sEgg)
    }
    
    else if cheatCheck("hat"){
        randomHat(oHat.sprite_index)
    }
    
    //cleaner
    else if cheatCheck("clean")
    or cheatCheck("clear"){
        with oFloaty {
            instance_destroy()
        }
        global.hat = false
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
    cheatString = ""
    keyboard_string = ""
    audio_play_sound(sdPop,5,false)
    return true
}
else {
    return false
}
