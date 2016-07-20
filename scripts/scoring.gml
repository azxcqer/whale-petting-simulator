#define scoring
//scoring(score to add)
score+=argument0

#define scoringInit
//just initialization
scoreTarget = 0
scoreLvl = 0

//the initial score
scoreBase = 100
//type of score resetting 0 is hard, 1 is soft
//hard reset delet the score and set the target, while soft just set a new target
scoreResetType = 1
//how much the score increases each level
scoreFixedMod = 50
//sacaling mod
scoreScalingMod = 10

//setting the initial target
scoreTarget = scoreBase

#define scoreTargetSet
scoreTarget = scoreTarget + scoreFixedMod + (scoreScalingMod * (scoreLvl-1))

#define scoreStep
if score >= scoreTarget{
    scoreLvl++
    if scoreResetType = 0{
        var diff = scoreTarget - score
        score = 0 + diff
    }
    scoreTargetSet()
}

#define scoreDraw
return string(score) + "/" + string(scoreTarget)
