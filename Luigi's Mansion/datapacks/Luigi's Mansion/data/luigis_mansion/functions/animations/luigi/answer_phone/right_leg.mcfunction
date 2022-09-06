scoreboard players operation @s AnimationProg = @a[tag=this_luigi,limit=1] IdleTime
scoreboard players add @s AnimationProg 41
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}