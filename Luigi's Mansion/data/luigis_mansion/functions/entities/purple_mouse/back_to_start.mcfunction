execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
tag @s remove rotated
tag @s remove walk_up_wall
tag @s remove walk_on_ceiling
tag @s remove walk_down_wall
tag @s remove walked_on_ceiling
tag @s remove disappear
tag @s remove spawn
tag @s remove vacuumable
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:62}}]}