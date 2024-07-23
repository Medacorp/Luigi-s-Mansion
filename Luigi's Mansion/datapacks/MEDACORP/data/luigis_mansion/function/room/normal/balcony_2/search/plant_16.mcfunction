execute unless score #balcony_2_plant_16 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:53,tags:["drop_loot"]}
execute unless score #balcony_2_plant_16 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["balcony_2_stone_bowl_potted_fern_4"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"balcony_2_stone_bowl_potted_fern_4",contents:{luigis_mansion:{green_emerald:1}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 680 120 -40 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 679 121 -39 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #balcony_2_plant_16 Searched 1
data remove storage luigis_mansion:data furniture