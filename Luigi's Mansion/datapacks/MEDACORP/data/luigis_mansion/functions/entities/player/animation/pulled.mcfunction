scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=10,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_dragged.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=10,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_dragged.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=10,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_dragged.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=10,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_dragged.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=10}] Sound 10
tag @s add new_poltergust_grabbed
tag @s add poltergust_grabbed
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 10
execute unless entity @s[scores={ErrorTime=1..},tag=poltergust_selected,tag=vacuuming_ghost] run function luigis_mansion:entities/player/animation/set/none