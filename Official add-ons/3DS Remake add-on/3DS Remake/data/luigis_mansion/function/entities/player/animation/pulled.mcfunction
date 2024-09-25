scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=5,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_dragged.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=5,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_dragged.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=5,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_dragged.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=5,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_dragged.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=5},tag=!gooigi] Sound 10
tag @s add keep_poltergust_grabbed
tag @s add animation_may_move
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 10
execute unless entity @s[tag=pulled_by_ghost,tag=poltergust_selected,tag=vacuuming_ghost] run function luigis_mansion:entities/player/animation/set/none