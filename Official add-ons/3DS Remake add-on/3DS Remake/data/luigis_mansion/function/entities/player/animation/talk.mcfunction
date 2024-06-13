scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1,Health=31..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.talk.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=31..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.talk.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Health=..30,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.talk.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=..30,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.talk.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s Sound 1
execute if entity @s[scores={AnimationProgress=40}] run function luigis_mansion:entities/player/animation/set/none