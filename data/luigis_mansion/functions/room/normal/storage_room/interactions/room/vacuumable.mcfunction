execute unless score #storage_room_vacuumable Search matches 1 run scoreboard players reset #storage_room_vacuumable Searching
scoreboard players reset #storage_room_vacuumable Search
execute if score #storage_room_vacuumable Searching matches 20 if entity @e[x=681.5,y=13,z=-45.5,distance=..0.7,type=minecraft:item_frame,tag=poster,limit=1] run setblock 681 13 -46 minecraft:stone_button[face=wall,facing=east,powered=false]
execute if score #storage_room_vacuumable Searching matches 20 if entity @e[x=679.5,y=13,z=-45.5,distance=..0.7,type=minecraft:item_frame,tag=poster,limit=1] run setblock 679 13 -46 minecraft:stone_button[face=wall,facing=west,powered=false]
execute if score #storage_room_vacuumable Searching matches 20 run tag @e[x=681.5,y=13,z=-45.5,distance=..0.7,type=minecraft:item_frame,tag=poster,limit=1] add dead
execute if score #storage_room_vacuumable Searching matches 20 run tag @e[x=679.5,y=13,z=-45.5,distance=..0.7,type=minecraft:item_frame,tag=poster,limit=1] add dead