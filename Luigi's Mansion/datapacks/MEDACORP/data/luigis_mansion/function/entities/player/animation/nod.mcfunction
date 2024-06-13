scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.nod.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.nod.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.nod.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.nod.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=1}] Sound 20
execute if entity @s[scores={AnimationProgress=20}] run function luigis_mansion:entities/player/animation/set/none