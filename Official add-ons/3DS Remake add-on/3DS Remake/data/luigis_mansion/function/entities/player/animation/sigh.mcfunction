scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=5,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=5,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=5,Health=41..},tag=!gooigi] Sound 15
scoreboard players set @s[scores={AnimationProgress=1,Health=..40},tag=!gooigi] Sound 20
execute if entity @s[scores={AnimationProgress=20}] run function luigis_mansion:entities/player/animation/set/none