scoreboard players add @s AnimationProgress 1
function luigis_mansion:entities/luigi/animation/shared/freeze_player_alt {rotated:"~ 40"}
scoreboard players set @s Sound 5
scoreboard players set @s Invulnerable 1
tag @s add pause_dialog
tag @s add door_animation
tag @s[tag=dark_room] add keep_poltergust_grabbed
tag @s[scores={AnimationProgress=1}] add reset_rotation
execute unless entity @e[tag=luigi,distance=0.1..,limit=1] run scoreboard players set #freeze_timer Selected 1
tag @s[scores={AnimationProgress=40}] remove door_animation
tag @s[scores={AnimationProgress=40}] remove reset_rotation
scoreboard players set @s[scores={AnimationProgress=40}] Invulnerable 0
execute if entity @s[scores={AnimationProgress=40}] run function luigis_mansion:entities/luigi/animation/set/none