#define followy
///followy() just following something around
//0 1 2
switch follow {
    default:
    case 0:
        followyY()
    case 1:
        followyX()
        break
    case 2:
        followyY()
}

#define followyInit
///followyInit(target,coordinate) 0/nothing = both 1 = x 2 = y
target = argument0
follow = 0

if argument_count = 2 {
    follow = argument1
}

followyYDif = y - target.y
followyXDif = x - target.x


#define followyX
x = target.x + followyXDif

#define followyY
y = target.y + followyYDif
