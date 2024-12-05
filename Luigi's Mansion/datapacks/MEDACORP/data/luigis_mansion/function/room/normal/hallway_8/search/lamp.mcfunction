execute unless score #hallway_8_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:33,tags:["drop_loot"]}
execute unless score #hallway_8_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hallway_8_hook_suspended_stained_glass_lamp"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"hallway_8_hook_suspended_stained_glass_lamp",contents:{luigis_mansion:{bill:10}}}
execute unless score #hallway_8_lamp Searched matches 1 as @e[tag=luigi] if score #hallway_8_lamp SearcherID = @s ID run tag @s add searcher
execute unless score #hallway_8_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_1
execute unless score #hallway_8_lamp Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 663 23 -56 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 663 22 -56 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #hallway_8_lamp Searched 1
data remove storage luigis_mansion:data furniture