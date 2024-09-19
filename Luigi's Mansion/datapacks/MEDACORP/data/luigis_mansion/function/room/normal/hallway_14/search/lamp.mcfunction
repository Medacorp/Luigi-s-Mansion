execute unless score #hallway_14_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:40,tags:["drop_loot"]}
execute unless score #hallway_14_lamp Searched matches 1 as @a if score #hallway_14_lamp SearcherID = @s ID run tag @s add searcher
execute unless score #hallway_14_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/m50
execute unless score #hallway_14_lamp Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 716 32 -46 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 716 31 -46 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #hallway_14_lamp Searched 1
data remove storage luigis_mansion:data furniture