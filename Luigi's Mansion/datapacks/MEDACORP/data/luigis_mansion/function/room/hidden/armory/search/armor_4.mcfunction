execute unless score #armory_armor_4 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:64,tags:["drop_loot"]}
execute unless score #armory_armor_4 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/h10_p10
execute unless data storage luigis_mansion:data furniture.loot positioned 756 29 -49 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 734 29 -49 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 756 31 -48 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #armory_armor_4 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=756.5,y=29,z=-48.5,distance=..0.7,tag=ghost,tag=hidden] add spawn