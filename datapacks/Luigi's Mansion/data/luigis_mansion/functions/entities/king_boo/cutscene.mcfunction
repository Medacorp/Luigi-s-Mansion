scoreboard players add @s ActionTime 1
execute unless entity @s[scores={ActionTime=1}] unless entity @s[scores={ActionTime=22..61}] run function luigis_mansion:entities/king_boo/move_forward_barrier
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.king_boo.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ActionTime=2..11}] run teleport @s ~ ~ ~ ~ ~9
execute at @s[scores={ActionTime=62..71}] run teleport @s ~ ~ ~ ~ ~-9
execute at @s[scores={ActionTime=62..}] unless block ~ ~ ~ minecraft:air run tag @s add remove_from_existence
execute if entity @s[tag=remove_from_existence] run playsound luigis_mansion:entity.boo.warp hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=remove_from_existence] run particle minecraft:dust 0.8 0.8 1 1 ~ ~1 ~ 0.3 0.3 0.3 0 30 normal @a[tag=same_room]