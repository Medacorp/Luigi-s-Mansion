summon minecraft:area_effect_cloud ~ ~ ~ {Rotation:[0.0f,90.0f],Duration:1000000,Tags:["ghost_marker","this_entity","ghost"]}
scoreboard players operation @e[tag=this_entity,limit=1] Health = @s Health
execute store result entity @e[tag=this_entity,limit=1] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute if entity @s[tag=hallway] run tag @e[tag=this_entity,limit=1] add hallway
function #luigis_mansion:entities/ghost/disappear
execute if entity @s[tag=!hallway] as @e[tag=this_entity,limit=1] positioned as @s run teleport @s ~ ~ ~ ~ 0
execute if entity @s[tag=!hallway] as @e[tag=this_entity,limit=1] at @s run function luigis_mansion:entities/ghost_marker/turn
tag @e[tag=this_entity,limit=1] remove this_entity
teleport @s ~ -100 ~
data merge entity @s {Health:0f,DeathTime:19s}