execute unless entity @s[nbt={Fire:-20s}] run data modify storage luigis_mansion:data damage set value {method:"3ds_remake:melt",knockback:"burn"}
execute if block ~ ~ ~ #minecraft:campfires[lit=true] run data modify storage luigis_mansion:data damage set value {method:"3ds_remake:melt",knockback:"burn"}
execute if block ~ ~-1 ~ minecraft:magma_block run data modify storage luigis_mansion:data damage set value {method:"3ds_remake:melt",knockback:"burn"}
execute if data storage luigis_mansion:data damage{method:"3ds_remake:melt"} run function luigis_mansion:entities/player/take_damage