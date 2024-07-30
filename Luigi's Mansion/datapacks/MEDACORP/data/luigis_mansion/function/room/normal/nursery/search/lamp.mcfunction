execute unless score #nursery_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:10,tags:["drop_loot"]}
execute unless score #nursery_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nursery_stained_glass_lamp"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"nursery_stained_glass_lamp",contents:{luigis_mansion:{gold_coin:5}}}
execute unless score #nursery_lamp Searched matches 1 as @a if score #nursery_lamp SearcherID = @s ID run tag @s add searcher
execute unless score #nursery_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_1
execute unless score #nursery_lamp Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 744 25 63 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 744 24 63 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #nursery_lamp Searched 1
data remove storage luigis_mansion:data furniture