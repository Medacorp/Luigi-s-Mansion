fill 684 114 -36 684 115 -36 minecraft:glass_pane[west=true,north=true,south=false,east=false]
fill 684 114 -37 684 115 -37 minecraft:glass_pane[west=true,south=false,north=true,east=false]
execute positioned 683 114 -36.0 run function luigis_mansion:blocks/dust
scoreboard players set #sealed_room_mirror Searched 1
tag @e[x=683.5,y=114,z=-35.5,distance=..0.7,tag=ghost_marker] add spawn