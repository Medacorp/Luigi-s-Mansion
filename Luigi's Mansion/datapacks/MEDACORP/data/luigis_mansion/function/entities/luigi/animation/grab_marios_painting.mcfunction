scoreboard players add @s AnimationProgress 1
function luigis_mansion:entities/luigi/animation/shared/freeze_player_alt {rotated:"~ 0"}
tag @s[scores={AnimationProgress=1}] add reset_rotation
scoreboard players set @s[scores={AnimationProgress=1}] Sound 100
execute if entity @s[scores={AnimationProgress=60,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.show_item.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=60,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.show_item.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=60,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.show_item.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=60,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.show_item.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=40}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~ ~-180 ~"}
execute if entity @s[scores={AnimationProgress=40}] run function luigis_mansion:entities/luigi/animation/shared/set_home_rotation
tag @s[scores={AnimationProgress=120}] remove reset_rotation
scoreboard players reset @s[scores={AnimationProgress=120}] HomeRotation
execute if entity @s[scores={AnimationProgress=120}] run function luigis_mansion:entities/luigi/animation/set/none