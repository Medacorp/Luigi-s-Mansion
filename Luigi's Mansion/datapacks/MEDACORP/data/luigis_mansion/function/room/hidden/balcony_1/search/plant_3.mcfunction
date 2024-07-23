execute unless score #balcony_1_plant_3 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:6,tags:["drop_loot"]}
execute unless score #balcony_1_plant_3 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["balcony_1_potted_dying_blue_flower"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"balcony_1_potted_dying_blue_flower",contents:{luigis_mansion:{blue_sapphire:1}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 674 111 -26 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 674 112 -26 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #balcony_1_plant_3 Searched 1
data remove storage luigis_mansion:data furniture