scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
execute if entity @s[scores={AnimationProgress=5}] run playsound luigis_mansion:entity.chauncey.rattle hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=15}] run playsound luigis_mansion:entity.chauncey.rattle hostile @a[tag=same_room] ~ ~ ~ 1
tag @e[tag=this_entity,limit=1] add has_equipment