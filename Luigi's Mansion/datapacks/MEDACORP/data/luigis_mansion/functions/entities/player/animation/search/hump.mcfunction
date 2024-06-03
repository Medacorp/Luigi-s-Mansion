scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.search.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.search.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.search.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.search.low_health player @a[tag=same_room] ~ ~ ~ 1 2
tag @s[scores={AnimationProgress=1}] add reset_rotation
tag @s[scores={AnimationProgress=15}] remove reset_rotation
tag @s add keep_poltergust_grabbed
execute if entity @s[scores={AnimationProgress=15}] run function luigis_mansion:entities/player/animation/set/none