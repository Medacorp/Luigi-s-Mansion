scoreboard players add @s AnimationProgress 1
function luigis_mansion:entities/luigi/animation/shared/freeze_player_alt {rotated:"~ 0"}
tag @s[scores={AnimationProgress=1}] add reset_rotation
function luigis_mansion:entities/luigi/move/teleport {teleport:"^ ^ ^0.2"}
scoreboard players set @s Sound 1
tag @s[scores={AnimationProgress=60}] remove reset_rotation
execute if entity @s[scores={AnimationProgress=60}] run function luigis_mansion:entities/luigi/animation/set/none