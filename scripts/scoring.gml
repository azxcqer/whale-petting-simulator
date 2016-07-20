#define scoring
//scoring(score to add)
score+=argument0

#define scoringInit
//just initialization
scoreTarget = 0
scoreLvl = 1

//type of score resetting 0 is hard, 1 is soft
//hard reset delet the score and set the target, while soft just set a new target
scoreResetType = 1
//how much the score increases each level
scoreMod = 100

//setting the initial target
scoreTargetSet()

#define scoreTargetSet
scoreTarget = (scoreLvl) * scoreMod

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
