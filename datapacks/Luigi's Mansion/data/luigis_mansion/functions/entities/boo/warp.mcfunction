tag @s[tag=east,y_rotation=-135..-45,tag=!up,tag=!down] add valid_wall
tag @s[tag=north,y_rotation=135..-135,tag=!up,tag=!down] add valid_wall
tag @s[tag=south,y_rotation=-45..45,tag=!up,tag=!down] add valid_wall
tag @s[tag=west,y_rotation=45..135,tag=!up,tag=!down] add valid_wall
tag @s[tag=east,y_rotation=-135..-45,x_rotation=-45..90,tag=up,tag=!down] add valid_wall
tag @s[tag=north,y_rotation=135..-135,x_rotation=-45..90,tag=up,tag=!down] add valid_wall
tag @s[tag=south,y_rotation=-45..45,x_rotation=-45..90,tag=up,tag=!down] add valid_wall
tag @s[tag=west,y_rotation=45..135,x_rotation=-45..90,tag=up,tag=!down] add valid_wall
tag @s[tag=east,y_rotation=-135..-45,x_rotation=-90..45,tag=!up,tag=down] add valid_wall
tag @s[tag=north,y_rotation=135..-135,x_rotation=-90..45,tag=!up,tag=down] add valid_wall
tag @s[tag=south,y_rotation=-45..45,x_rotation=-90..45,tag=!up,tag=down] add valid_wall
tag @s[tag=west,y_rotation=45..135,x_rotation=-90..45,tag=!up,tag=down] add valid_wall
tag @s[tag=up,x_rotation=-90..-45] add valid_wall
tag @s[tag=down,x_rotation=45..90] add valid_wall
execute if entity @s[tag=!valid_wall] run function luigis_mansion:entities/boo/rotate
tag @s[tag=!valid_wall] remove wall
tag @s remove valid_wall