execute unless score #master_bedroom_plant Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:9,tags:["drop_loot"]}
execute unless score #master_bedroom_plant Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["master_bedroom_column_mounted_brown_potted_fern"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"master_bedroom_column_mounted_brown_potted_fern",contents:{luigis_mansion:{green_emerald:1}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 686 111 55 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 687 114 54 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #master_bedroom_plant Searched 1
data remove storage luigis_mansion:data furniture