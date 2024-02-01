scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1,Health=71..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.yell.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=71..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.yell.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Health=41..70,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.yell.medium_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=41..70,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.yell.medium_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.yell.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.yell.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=1},tag=!gooigi] Sound 50
tag @s[scores={Health=..30},tag=!gooigi] add low_health
tag @s[scores={Health=..15},tag=gooigi] add low_health
execute if entity @s[scores={AnimationProgress=40}] run function luigis_mansion:entities/player/animation/set/none