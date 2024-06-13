tag @s remove wall_warp
scoreboard players set @s LoadedChunks 0
tag @s remove loaded_chunks
execute in e3_demo:original if block 753 11 9 minecraft:air store success score #temp Time run teleport @s ~34 ~-91 ~1
execute unless score #temp Time matches 1 run tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"e3_demo:message.no_mansion_inside_found"}]}
execute unless score #temp Time matches 1 at @s run teleport @s ^ ^ ^-3