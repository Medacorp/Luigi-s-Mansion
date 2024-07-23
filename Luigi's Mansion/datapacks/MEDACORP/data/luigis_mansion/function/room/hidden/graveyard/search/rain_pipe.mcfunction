execute unless score #graveyard_rain_pipe Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:29,tags:["drop_loot"]}
execute unless score #graveyard_rain_pipe Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["graveyard_rain_pipe"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"graveyard_rain_pipe",contents:{luigis_mansion:{red_ruby:1}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 669 103 -25 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 669 103 -26 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #graveyard_rain_pipe Searched 1
data remove storage luigis_mansion:data furniture