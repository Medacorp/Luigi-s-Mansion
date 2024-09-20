execute unless score #tea_room_drawer_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:34,tags:["drop_loot"]}
execute unless score #tea_room_drawer_1 Searched matches 1 as @a if score #tea_room_drawer_1 SearcherID = @s ID run tag @s add searcher
execute unless score #tea_room_drawer_1 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/m20_p15
execute unless score #tea_room_drawer_1 Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 643 20 46 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 643 21 47 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #tea_room_drawer_1 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=643.5,y=20,z=46.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
teleport @e[x=643.5,y=20,z=46.5,distance=..0.7,tag=spawn] 643 20 47