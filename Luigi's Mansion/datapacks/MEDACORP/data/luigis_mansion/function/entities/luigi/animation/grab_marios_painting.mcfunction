scoreboard players add @s AnimationProgress 1
function luigis_mansion:entities/luigi/animation/shared/freeze_player_alt {rotated:"~ 0"}
tag @s[scores={AnimationProgress=1}] add reset_rotation
scoreboard players set @s[scores={AnimationProgress=1}] Sound 60
execute if entity @s[scores={AnimationProgress=60}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.show_item.high_health",medium:"luigis_mansion:entity.player.show_item.high_health",low:"luigis_mansion:entity.player.show_item.low_health",duration:40}
execute if entity @s[scores={AnimationProgress=40}] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~ ~-180 ~"}
execute if entity @s[scores={AnimationProgress=40}] run function luigis_mansion:entities/luigi/animation/shared/set_home_rotation
tag @s[scores={AnimationProgress=120}] remove reset_rotation
scoreboard players reset @s[scores={AnimationProgress=120}] HomeRotation
execute if entity @s[scores={AnimationProgress=120}] run function luigis_mansion:entities/luigi/animation/set/none