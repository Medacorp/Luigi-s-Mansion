execute unless score #laundry_room_basket Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:22,tags:["drop_loot"]}
execute unless score #laundry_room_basket Searched matches 1 as @a if score #laundry_room_basket SearcherID = @s ID run tag @s add searcher
execute unless score #laundry_room_basket Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/m50
execute unless score #laundry_room_basket Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 714 11 71 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 714 12 71 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #laundry_room_basket Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=714.5,y=11,z=71.5,distance=..0.7,tag=ghost,tag=hidden] add spawn