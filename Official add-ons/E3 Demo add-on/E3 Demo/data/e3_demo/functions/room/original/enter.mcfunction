tag @s remove wall_warp
scoreboard players set @s LoadedChunks 0
tag @s remove loaded_chunks
execute in e3_demo:original unless block 753 11 9 minecraft:air run teleport @s ~34 ~-91 ~1
execute in e3_demo:original if block 753 11 9 minecraft:air run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"e3_demo:message.no_mansion_inside_found"}]}
execute in e3_demo:original if block 753 11 9 minecraft:air at @s run teleport @s ^ ^ ^-3