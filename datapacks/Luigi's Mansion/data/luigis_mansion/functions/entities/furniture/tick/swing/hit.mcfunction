execute store result score #temp Time run data get entity @s Pose.Head[0] 10
teleport @s ~ ~ ~ -180 0
execute if score #temp Time matches ..-1 run teleport @s ~ ~ ~ 0 0
execute if score #temp Time matches ..-1 run scoreboard players operation #temp Time *= #-1 Constants
execute store result entity @s Rotation[1] float 0.1 run scoreboard players add #temp Time 900
execute at @s run function luigis_mansion:entities/furniture/tick/swing/hit_x_pos
execute store result score #temp Time run data get entity @s Pose.Head[2] 10
teleport @s ~ ~ ~ 90 0
execute if score #temp Time matches ..-1 run teleport @s ~ ~ ~ -90 0
execute if score #temp Time matches ..-1 run scoreboard players operation #temp Time *= #-1 Constants
execute store result entity @s Rotation[1] float 0.1 run scoreboard players add #temp Time 900
execute at @s run function luigis_mansion:entities/furniture/tick/swing/hit_y_pos
teleport @s ~ ~ ~ 0 0
data modify entity @e[tag=collision_check,tag=z,limit=1] Pos[0] set from entity @e[tag=collision_check,tag=x,limit=1] Pos[0]
execute store result score #temp Time run data get entity @e[tag=collision_check,tag=x,limit=1] Pos[1] 10
execute store result score #temp2 Time run data get entity @e[tag=collision_check,tag=z,limit=1] Pos[1] 10
scoreboard players operation #temp Time += #temp2 Time
execute store result entity @e[tag=collision_check,tag=z,limit=1] Pos[1] double 0.1 run scoreboard players operation #temp Time /= #2 Constants
kill @e[tag=collision_check,tag=x,limit=1]
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
tag @s add me
scoreboard players operation #y Steps = @s FurnitureSizeY
execute at @e[tag=collision_check,tag=z,limit=1] facing entity @s eyes positioned ~-0.5 ~-0.5 ~-0.5 run function luigis_mansion:entities/furniture/tick/swing/harm
scoreboard players reset #y Steps
tag @s remove me
kill @e[tag=collision_check,tag=z,limit=1]