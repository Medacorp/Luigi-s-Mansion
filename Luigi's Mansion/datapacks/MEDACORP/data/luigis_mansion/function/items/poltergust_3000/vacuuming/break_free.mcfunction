tag @s add vanish
tag @s remove hurt
tag @s remove fleeing
scoreboard players set @s AnimationProgress 0
scoreboard players set @s ActionTime 0
scoreboard players set @s HurtTime 0
data modify entity @s ArmorItems[3].components."minecraft:custom_data".attacked_by set value []
execute if score #debug_messages Selected matches 2.. run tellraw @a {"type":"translatable","translate":"luigis_mansion:message.debug.format","with":[{"type":"translatable","translate":"luigis_mansion:message.debug","color":"gold"},{"type":"translatable","translate":"luigis_mansion:message.debug.ghost_escape.damage"}]}
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["temp","target_direction"]}
execute store result score #temp PositionY run data get entity @s Pos[1] 10
execute store result entity @e[tag=target_direction,limit=1] Pos[1] double 0.1 run scoreboard players operation #temp PositionY += @s EntityYOffset
execute rotated as @a[tag=me,limit=1] positioned ^ ^ ^0.5 facing entity @e[tag=target_direction,limit=1] feet run function luigis_mansion:items/poltergust_3000/vacuuming/break_free_step
kill @e[tag=target_direction,limit=1]
scoreboard players reset #temp Steps
tag @s remove being_vacuumed