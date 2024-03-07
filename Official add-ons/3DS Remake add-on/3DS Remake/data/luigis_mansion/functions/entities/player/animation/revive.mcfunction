scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.revive.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.revive.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.revive.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.revive.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s Sound 1
tag @s[tag=dark_room] add keep_poltergust_grabbed
execute if entity @s[scores={AnimationProgress=40}] run function luigis_mansion:entities/player/animation/set/none