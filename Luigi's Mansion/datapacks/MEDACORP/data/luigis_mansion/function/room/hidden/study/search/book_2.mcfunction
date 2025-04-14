execute unless score #study_book_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:8,tags:["drop_loot"]}
execute unless score #study_book_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["study_book_2"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"study_book_2",contents:{luigis_mansion:{bill:10}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 708 21 -33 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 708 21 -33 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #study_book_2 Searched 1
data remove storage luigis_mansion:data furniture