scoreboard players add @s Time 1
execute if entity @s[scores={Time=1..59}] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:magma_block
execute if entity @s[scores={Time=60}] run clone ~-1 ~-2 ~-1 ~1 ~-2 ~1 ~-1 ~-1 ~-1
execute if entity @s[scores={Time=60}] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:air replace minecraft:melon
kill @s[scores={Time=60}]
