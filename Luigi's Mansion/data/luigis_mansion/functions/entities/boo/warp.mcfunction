execute if entity @s[tag=down,tag=wall,y_rotation=-135..-45] run function luigis_mansion:entities/boo/warp/east
execute if entity @s[tag=right,tag=wall,y_rotation=135..-135] run function luigis_mansion:entities/boo/warp/north
execute if entity @s[tag=left,tag=wall,y_rotation=-45..45] run function luigis_mansion:entities/boo/warp/south
execute if entity @s[tag=up,tag=wall,y_rotation=45..135] run function luigis_mansion:entities/boo/warp/west