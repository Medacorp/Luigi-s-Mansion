fill 684 114 52 684 115 52 minecraft:glass_pane[west=true,north=true,south=false,east=false]
fill 684 114 51 684 115 51 minecraft:glass_pane[west=true,south=false,north=true,east=false]
execute positioned 683 114 52.0 run function luigis_mansion:blocks/dust
scoreboard players set #sealed_room_mirror Searched 1
tag @e[x=683.5,y=114,z=51.5,distance=..0.7,tag=ghost,tag=hidden] add spawn