fill 700 122 42 700 123 42 minecraft:glass_pane[west=true,north=true,south=false,east=false]
fill 700 122 41 700 123 41 minecraft:glass_pane[west=true,south=true,north=false,east=false]
execute positioned 699 122 42.0 run function luigis_mansion:blocks/dust
scoreboard players set #armory_mirror Searched 1
tag @e[x=699.5,y=122,z=41.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=699.5,y=122,z=41.5,distance=..0.7,tag=hidden_boo] add spawn