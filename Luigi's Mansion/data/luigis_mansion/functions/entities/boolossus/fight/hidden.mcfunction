execute if entity @s[tag=!split] run function luigis_mansion:entities/boolossus/fight/hidden/merged
execute if entity @s[tag=split] run function luigis_mansion:entities/boolossus/fight/hidden/split

execute unless entity @e[x=735.5,y=42,z=-19952.5,distance=..5,tag=ice_elemental_ghost] positioned 735 42 -19953 run function luigis_mansion:spawn_entities/ghost/ice_elemental_ghost
execute unless entity @e[x=704.5,y=42,z=-19952.5,distance=..5,tag=ice_elemental_ghost] positioned 704 42 -19953 run function luigis_mansion:spawn_entities/ghost/ice_elemental_ghost