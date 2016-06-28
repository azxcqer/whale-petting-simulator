#define shake
///shake()
if shakeActive {
    shakeStep++
    switch(shakeStep) {
        case 1:
        case 3:
            x = shakeTarget
            break
        case 4:
            shakeActive = false
            shakeStep = 0
        case 0:
        case 2:
            x = shakeOrigin
            break            
    }
}

#define shakeInit
///shakeInit()
shakeOrigin = x
shakeRange = 5
shakeTarget = shakeOrigin + shakeRange
shakeStep = 0
shakeActive = false
