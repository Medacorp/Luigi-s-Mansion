tag @s[tag=dead,tag=attack] remove dead
execute if entity @s[tag=dead,tag=north] positioned ~ ~ ~1 run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~1 ~0.1 0.2 1 0.2 1 30
execute if entity @s[tag=dead,tag=south] positioned ~ ~ ~-1 run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~1 ~0.1 0.2 1 0.2 1 30
execute if entity @s[tag=dead,tag=west] positioned ~1 ~ ~ run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~1 ~0.1 0.2 1 0.2 1 30
execute if entity @s[tag=dead,tag=laundry_room] positioned ~1 ~ ~ run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~1 ~0.1 0.2 1 0.2 1 30
execute if entity @s[tag=dead] run function luigis_mansion:entities/fake_door/drop_loot
tag @s[tag=remove_from_existence] add dead
execute if entity @s[tag=dead] run function luigis_mansion:entities/fake_door/clean_up

execute if block ~ ~ ~ #minecraft:doors[open=true] run tag @s add attack

execute if entity @s[tag=attack] run function luigis_mansion:entities/fake_door/attack