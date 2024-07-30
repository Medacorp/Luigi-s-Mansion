execute unless score #hallway_7_lamp_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:15,tags:["drop_loot"]}
execute unless score #hallway_7_lamp_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hallway_7_hook_suspended_lantern"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"hallway_7_hook_suspended_lantern",contents:{luigis_mansion:{bill:5}}}
execute unless score #hallway_7_lamp_2 Searched matches 1 as @a if score #hallway_7_lamp_2 SearcherID = @s ID run tag @s add searcher
execute unless score #hallway_7_lamp_2 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/health_dependent_1
execute unless score #hallway_7_lamp_2 Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 716 14 -56 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 716 13 -56 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #hallway_7_lamp_2 Searched 1
data remove storage luigis_mansion:data furniture