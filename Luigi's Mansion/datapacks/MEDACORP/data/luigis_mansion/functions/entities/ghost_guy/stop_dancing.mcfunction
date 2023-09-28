scoreboard players set @s AnimationProgress 0
scoreboard players set @s ActionTime 0
scoreboard players set @s PathStep 0
tag @s add stop_dancing
teleport @s[tag=dodge] ~ ~1 ~
tag @s remove dodge
tag @s add me
data merge entity @s {Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
execute store result score #temp GhostGuyCouple run scoreboard players get @s GhostGuyCouple
execute as @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"dancing_ghost_guy"}}]},tag=dancing,tag=!me] if score @s GhostGuyCouple = #temp GhostGuyCouple run tag @s add partner
tag @e[tag=partner,limit=1] add stop_dancing
execute as @e[tag=partner,limit=1] at @s run teleport @s[tag=dodge] ~ ~1 ~
tag @e[tag=partner,limit=1] remove dodge
data merge entity @e[tag=partner,limit=1] {Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]}}
scoreboard players set @e[tag=partner,limit=1] AnimationProgress 0
scoreboard players set @e[tag=partner,limit=1] ActionTime 0
scoreboard players set @e[tag=partner,limit=1] PathStep 0
tag @e[tag=partner,limit=1] remove partner
scoreboard players reset #temp GhostGuyCouple
tag @s remove me