execute unless score #butlers_room_closet Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:23,tags:["drop_loot"]}
execute unless score #butlers_room_closet Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["butlers_room_tool_cabinet"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"butlers_room_tool_cabinet",contents:{luigis_mansion:{gold_coin:20,bill:20}}}
execute unless score #butlers_room_closet Searched matches 1 as @e[tag=luigi] if score #butlers_room_closet SearcherID = @s ID run tag @s add searcher
execute unless score #butlers_room_closet Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_3
execute unless score #butlers_room_closet Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 739 12 -51 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 740 12 -51 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #butlers_room_closet Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=739.5,y=11,z=-50.5,distance=..0.7,tag=ghost,tag=hidden] add spawn