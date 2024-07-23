execute unless score #wardrobe_room_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:49,tags:["drop_loot"]}
execute unless score #wardrobe_room_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 682.0 25 -50.0 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 673.0 25 -50.0 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 682.0 24 -50.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #wardrobe_room_lamp Searched 1
data remove storage luigis_mansion:data furniture