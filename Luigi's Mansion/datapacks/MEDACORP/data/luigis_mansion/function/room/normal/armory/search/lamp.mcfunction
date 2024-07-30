execute unless score #armory_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:64,tags:["drop_loot"]}
execute unless score #armory_lamp Searched matches 1 as @a if score #armory_lamp SearcherID = @s ID run tag @s add searcher
execute unless score #armory_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_2
execute unless score #armory_lamp Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 752 34 64 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 738 34 64 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 752 33 64 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #armory_lamp Searched 1
data remove storage luigis_mansion:data furniture