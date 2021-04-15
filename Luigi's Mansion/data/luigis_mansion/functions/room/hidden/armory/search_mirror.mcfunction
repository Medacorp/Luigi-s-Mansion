fill 700 122 -27 700 123 -27 minecraft:glass_pane[west=true,south=true,north=false,east=false]
fill 700 122 -26 700 123 -26 minecraft:glass_pane[west=true,north=true,south=false,east=false]
execute positioned 699 122 -26.0 run function luigis_mansion:blocks/dust
scoreboard players set #armory_mirror Searched 1
tag @e[x=699.5,y=122,z=-25.5,distance=..0.7,tag=ghost_marker] add spawn
tag @e[x=699.5,y=122,z=-25.5,distance=..0.7,tag=hidden_boo] add spawn