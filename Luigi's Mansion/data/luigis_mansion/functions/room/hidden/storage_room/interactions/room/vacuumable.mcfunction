execute unless score #storage_room_vacuumable Search matches 1 run scoreboard players reset #storage_room_vacuumable Searching
scoreboard players reset #storage_room_vacuumable Search
execute if score #storage_room_vacuumable Searching matches 20 if entity @e[x=673.5,y=104,z=33.5,distance=..0.7,type=minecraft:item_frame,tag=poster,limit=1] run setblock 673 104 33 minecraft:stone_button[face=wall,facing=east,powered=false]
execute if score #storage_room_vacuumable Searching matches 20 run tag @e[x=673.5,y=104,z=33.5,distance=..0.7,type=minecraft:item_frame,tag=poster,limit=1] add dead