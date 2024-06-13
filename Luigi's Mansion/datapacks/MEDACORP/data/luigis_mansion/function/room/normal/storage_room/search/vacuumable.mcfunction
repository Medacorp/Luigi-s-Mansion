setblock 681 13 -46 minecraft:stone_button[face=wall,facing=east,powered=false]
setblock 679 13 -46 minecraft:stone_button[face=wall,facing=west,powered=false]
tag @e[x=681.5,y=13,z=-45.5,distance=..0.7,type=minecraft:item_frame,tag=poster,limit=1] add dead
tag @e[x=679.5,y=13,z=-45.5,distance=..0.7,type=minecraft:item_frame,tag=poster,limit=1] add dead
scoreboard players set #storage_room_vacuumable Searched 1