execute unless score #armory_armor_6 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:64,tags:["drop_loot"]}
execute unless score #armory_armor_6 Searched matches 1 as @a if score #armory_armor_6 SearcherID = @s ID run tag @s add searcher
execute unless score #armory_armor_6 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_4
execute unless score #armory_armor_6 Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 749 29 -45 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 741 29 -45 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 749 31 -44 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #armory_armor_6 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=749.5,y=29,z=-44.5,distance=..0.7,tag=ghost,tag=hidden] add spawn