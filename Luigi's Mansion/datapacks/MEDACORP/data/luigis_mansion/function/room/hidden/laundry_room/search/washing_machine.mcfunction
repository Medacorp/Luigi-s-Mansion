execute unless score #laundry_room_washing_machine Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:22,tags:["drop_loot"]}
execute unless score #laundry_room_washing_machine Searched matches 1 unless data storage luigis_mansion:data current_state.current_data.obtained_items{marios_hat:1b} run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{mario_item:[{variant:"hat"}]}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 715 11 -58 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 715 13 -58 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #laundry_room_washing_machine Searched 1
data remove storage luigis_mansion:data furniture