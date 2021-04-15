execute unless entity @s[nbt={Age:60}] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:magma_block
execute if entity @s[nbt={Age:59}] run clone ~-1 ~-2 ~-1 ~1 ~-2 ~1 ~-1 ~-1 ~-1
execute if entity @s[nbt={Age:59}] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:air replace minecraft:melon
