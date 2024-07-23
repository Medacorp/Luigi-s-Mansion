execute unless score #safari_room_table Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:50,tags:["drop_loot"],loot:{contents:{luigis_mansion:{big_heart:1}}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 743 30 -56 run function luigis_mansion:blocks/dust
execute unless data storage luigis_mansion:data furniture.loot positioned 747 30 -56 run function luigis_mansion:blocks/dust_no_sound
execute if data storage luigis_mansion:data furniture.loot positioned 743 30 -55 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #safari_room_table Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=743.5,y=29,z=-55.5,distance=..0.7,tag=ghost] add spawn