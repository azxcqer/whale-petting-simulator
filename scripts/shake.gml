#define shake
///shake()
if shakeActive {

    x += shakeSpeed * shakeDir
    
    if x >= shakeTarget
    || x <= shakeOrigin {
        shakeDir = shakeDir *-1
        shakeStep++
    }   

    if shakeStep >= 4 {
        shakeActive = false
        shakeStep = 0
    }
}



#define shakeInit
///shakeInit()
shakeRange = 5
shakeStep = 0
shakeActive = false
shakeDir = 1
shakeSpeed = 0.75
shakeOriginator()

#define shakeTrigger
///shaking triggering
if !shakeActive {
    shakeOriginator()
}

shakeActive = true

#define shakeOriginator
///dude
shakeOrigin = x
shakeTarget = shakeOrigin + shakeRange