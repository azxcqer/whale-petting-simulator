//cheatBgs()
if cheatCheck("tooslow") {
    background_hspeed[0] += 2
}

else if cheatCheck("notsofast") {
    background_hspeed[0] -= 2
}

else if cheatCheck("bgdef") {
   setBG(0, bg_temp)
}

else if cheatCheck("space") {
    setBG(0, bgSpace)
}
