execute if predicate luigis_mansion:gold_mouse_chance positioned 718 20 34 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
execute positioned 718 20 34 as @e[tag=gold_mouse,distance=..0.7] run function luigis_mansion:entities/gold_mouse/give_money/silver_diamond
execute positioned 718 20 34 as @e[tag=gold_mouse,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"hallway_9_hallway_15_gold_mouse"}
tag @s add chance_check