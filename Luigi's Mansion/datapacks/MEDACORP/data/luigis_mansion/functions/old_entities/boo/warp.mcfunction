tag @s[tag=east,y_rotation=-135..-45,tag=!up,tag=!down] add warp_east
tag @s[tag=north,y_rotation=135..-135,tag=!up,tag=!down] add warp_north
tag @s[tag=south,y_rotation=-45..45,tag=!up,tag=!down] add warp_south
tag @s[tag=west,y_rotation=45..135,tag=!up,tag=!down] add warp_west
tag @s[tag=east,y_rotation=-135..-45,x_rotation=-45..90,tag=!up,tag=down] add warp_east
tag @s[tag=north,y_rotation=135..-135,x_rotation=-45..90,tag=!up,tag=down] add warp_north
tag @s[tag=south,y_rotation=-45..45,x_rotation=-45..90,tag=!up,tag=down] add warp_south
tag @s[tag=west,y_rotation=45..135,x_rotation=-45..90,tag=!up,tag=down] add warp_west
tag @s[tag=east,y_rotation=-135..-45,x_rotation=-90..45,tag=up,tag=!down] add warp_east
tag @s[tag=north,y_rotation=135..-135,x_rotation=-90..45,tag=up,tag=!down] add warp_north
tag @s[tag=south,y_rotation=-45..45,x_rotation=-90..45,tag=up,tag=!down] add warp_south
tag @s[tag=west,y_rotation=45..135,x_rotation=-90..45,tag=up,tag=!down] add warp_west
tag @s[tag=up,x_rotation=-90..-45] add warp_up
tag @s[tag=down,x_rotation=45..90] add warp_down
execute unless entity @s[tag=!warp_down,tag=!warp_east,tag=!warp_north,tag=!warp_south,tag=!warp_west,tag=!warp_up] run function #luigis_mansion:entities/boo/warp
execute if entity @s[tag=!warp_down,tag=!warp_east,tag=!warp_north,tag=!warp_south,tag=!warp_west,tag=!warp_up] run function luigis_mansion:old_entities/boo/rotate