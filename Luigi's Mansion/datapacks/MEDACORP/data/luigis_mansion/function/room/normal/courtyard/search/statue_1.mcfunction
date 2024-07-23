execute unless score #cold_storage_shelf_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:30,tags:["drop_loot"],loot:{contents:{luigis_mansion:{small_heart:[{tags:["random_turn_on_bounce"]}]}}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 648 104 25 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 648 106 24 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #cold_storage_shelf_1 Searched 1
data remove storage luigis_mansion:data furniture