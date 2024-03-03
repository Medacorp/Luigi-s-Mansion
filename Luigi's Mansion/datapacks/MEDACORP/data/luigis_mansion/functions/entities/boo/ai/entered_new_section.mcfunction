tag @s remove rotated
tag @s remove new_section
tag @s[y_rotation=45..135] add not_east
tag @s[y_rotation=-45..45] add not_north
tag @s[y_rotation=135..-135] add not_south
tag @s[y_rotation=-135..-45] add not_west
tag @s[x_rotation=45..90] add not_up
tag @s[x_rotation=-90..-45] add not_down
scoreboard players reset @s BooTimer