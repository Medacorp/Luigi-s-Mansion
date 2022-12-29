execute if predicate luigis_mansion:gold_mouse_chance run function luigis_mansion:entities/gold_mouse/give_money/silver_diamond
execute if data storage luigis_mansion:data entity.loot run data modify storage luigis_mansion:data entity.loot.name set value "hallway_9_hallway_15_gold_mouse"
execute if data storage luigis_mansion:data entity.loot positioned 718 20 34 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
tag @s add chance_check