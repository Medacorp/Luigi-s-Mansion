scoreboard players set @s AnimationProg 0
scoreboard players set @s ActionTime 0
tag @s add stop_dancing
teleport @s[tag=dodge] ~ ~1.1 ~
tag @s remove dodge
tag @s add me
data merge entity @s {Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
scoreboard players operation #temp GhostGuyCouple = @s GhostGuyCouple
execute as @e[tag=ghost_guy,tag=dancing,tag=!me] if score @s GhostGuyCouple = #temp GhostGuyCouple run tag @s add partner
tag @e[tag=ghost_guy,tag=dancing,tag=partner,limit=1] add stop_dancing
execute as @e[tag=ghost_guy,tag=dancing,tag=partner,limit=1] at @s run teleport @s[tag=dodge] ~ ~1.1 ~
tag @e[tag=ghost_guy,tag=dancing,tag=partner,limit=1] remove dodge
data merge entity @e[tag=ghost_guy,tag=dancing,tag=partner,limit=1] {Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
scoreboard players set @e[tag=ghost_guy,tag=dancing,tag=partner,limit=1] AnimationProg 0
scoreboard players set @e[tag=ghost_guy,tag=dancing,tag=partner,limit=1] ActionTime 0
tag @e[tag=ghost_guy,tag=dancing,tag=partner,limit=1] remove partner
execute if entity @s[scores={GhostGuyCouple=-1}] run scoreboard players reset #ghost_guys_1 Wave
execute if entity @s[scores={GhostGuyCouple=-2}] run scoreboard players reset #ghost_guys_2 Wave
execute if entity @s[scores={GhostGuyCouple=-3}] run scoreboard players reset #ghost_guys_3 Wave
scoreboard players reset #temp GhostGuyCouple
tag @s remove me