execute unless score #wardrobe_room_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:49,tags:["drop_loot"]}
execute unless score #wardrobe_room_lamp Searched matches 1 as @a if score #wardrobe_room_lamp SearcherID = @s ID run tag @s add searcher
execute unless score #wardrobe_room_lamp Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/p50
execute unless score #wardrobe_room_lamp Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 682.0 25 66.0 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 673.0 25 66.0 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 682.0 24 66.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #wardrobe_room_lamp Searched 1
data remove storage luigis_mansion:data furniture