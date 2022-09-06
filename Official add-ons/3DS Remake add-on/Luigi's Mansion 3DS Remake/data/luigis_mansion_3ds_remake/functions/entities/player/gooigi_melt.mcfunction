execute unless entity @s[nbt={Fire:-20s}] run function luigis_mansion:entities/player/knockback/burn
execute if block ~ ~ ~ #minecraft:campfires[lit=true] run function luigis_mansion:entities/player/knockback/burn
execute if block ~ ~-1 ~ minecraft:magma_block run function luigis_mansion:entities/player/knockback/burn