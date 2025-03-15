execute if entity @e[tag=me,limit=1,tag=!capturing_ghost] run tag @s add vanish
execute if entity @e[tag=me,limit=1,tag=!capturing_ghost] run data modify entity @s data.attacked_by set value []
execute if entity @e[tag=me,limit=1,tag=!capturing_ghost] if score #debug_messages Selected matches 2.. run tellraw @a {type:"translatable",translate:"luigis_mansion:message.debug.format",with:[{type:"translatable",translate:"luigis_mansion:message.debug",color:"gold"},{type:"translatable",translate:"luigis_mansion:message.debug.ghost_escape.damage"}]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["temp","target_direction"]}
execute store result score #temp PositionY run data get entity @s Pos[1] 10
execute store result entity @e[tag=target_direction,limit=1] Pos[1] double 0.1 run scoreboard players operation #temp PositionY += @s EntityYOffset
execute rotated as @e[tag=me,limit=1] positioned ^ ^ ^0.5 facing entity @e[tag=target_direction,limit=1] feet run function e3_demo:items/poltergust_500/vacuuming/break_free_step
kill @e[tag=target_direction,limit=1]
scoreboard players reset #temp Steps