execute unless score #secret_altar_lamp_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:72,tags:["drop_loot"]}
execute unless score #secret_altar_lamp_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["secret_altar_altar_chandelier_2"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"secret_altar_altar_chandelier_2",contents:{luigis_mansion:{blue_sapphire:1}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 648 98 -18 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 648 98 -34 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 648 97 -18 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #secret_altar_lamp_2 Searched 1
data remove storage luigis_mansion:data furniture