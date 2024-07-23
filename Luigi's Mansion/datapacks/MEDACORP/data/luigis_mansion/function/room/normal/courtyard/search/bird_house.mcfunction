execute unless score #courtyard_bird_house Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:30,tags:["drop_loot"]}
execute unless score #courtyard_bird_house Searched matches 1 unless data storage luigis_mansion:data current_state.current_data.obtained_items{marios_letter:1b} run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{mario_item:[{variant:"letter"}]}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 647 103 -12 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 647 104 -12 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #courtyard_bird_house Searched 1
data remove storage luigis_mansion:data furniture