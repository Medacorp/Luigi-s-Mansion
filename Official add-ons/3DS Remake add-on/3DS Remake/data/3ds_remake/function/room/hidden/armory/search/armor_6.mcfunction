execute unless score #armory_armor_6 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:64,tags:["drop_loot"]}
execute unless score #armory_armor_6 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/p15
execute unless data storage luigis_mansion:data furniture.loot positioned 749 29 60 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 741 29 60 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 749 31 59 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #armory_armor_6 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=749.5,y=29,z=60.5,distance=..0.7,tag=ghost,tag=hidden] add spawn