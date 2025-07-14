execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["temp","remove_from_existence"]}
data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[1]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #cosx Time run data get entity @e[tag=temp,limit=1] Pos[2] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #cosy Time run data get entity @e[tag=temp,limit=1] Pos[2] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[1]
execute as @e[tag=temp,limit=1] at @s positioned 0.001 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #sinx Time run data get entity @e[tag=temp,limit=1] Pos[0] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[tag=temp,limit=1] at @s positioned 0.001 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #siny Time run data get entity @e[tag=temp,limit=1] Pos[0] 10

kill @e[tag=temp,limit=1]

execute store result score #temp3 Time run data get entity @s Rotation[0] 10
execute store result score #temp2 Time run data get entity @s Rotation[1] 10
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if score #temp Time matches 1.. run teleport @s ~ ~ ~ ~-180 ~
execute if score #temp Time matches 1.. run scoreboard players operation #temp Time *= #-1 Constants
scoreboard players add #temp Time 900
execute store result entity @s Rotation[1] float 0.1 run scoreboard players operation #temp Time += #temp2 Time
execute at @s run function luigis_mansion:entities/furniture/type/swinging/hit_x_pos
execute store result score #temp Time run data get entity @s Pose.Head[2] 10
execute if score #temp Time matches ..-1 run teleport @s ~ ~ ~ ~-90 ~
execute if score #temp Time matches 1.. run teleport @s ~ ~ ~ ~90 ~
execute if score #temp Time matches 1.. run scoreboard players operation #temp Time *= #-1 Constants
scoreboard players add #temp Time 900
execute store result entity @s Rotation[1] float 0.1 run scoreboard players operation #temp Time += #temp2 Time
execute at @s run function luigis_mansion:entities/furniture/type/swinging/hit_z_pos
teleport @s ~ ~1.4 ~ ~ ~
scoreboard players reset #cosx
scoreboard players reset #cosy
scoreboard players reset #sinx
scoreboard players reset #siny
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
scoreboard players operation @e[tag=collision_check,tag=z,limit=1] Steps = @e[tag=collision_check,tag=x,limit=1] FurnitureSizeUp
execute as @e[tag=collision_check,tag=z,limit=1] run scoreboard players operation @s Steps > @s FurnitureSizeUp
scoreboard players operation @e[tag=collision_check,tag=z,limit=1] FurnitureSizeForward = @e[tag=collision_check,tag=x,limit=1] FurnitureSizeForward
execute as @e[tag=collision_check,tag=z,limit=1] at @s unless entity @s[scores={FurnitureSizeForward=0}] run function luigis_mansion:entities/furniture/type/swinging/hit_pos/merge
execute as @e[tag=collision_check,tag=z,limit=1] at @s unless score @s Steps = @s FurnitureSizeUp run function luigis_mansion:entities/furniture/type/swinging/hit_pos/set_to_highest_y
tag @s add me
execute if entity @s[scores={FurnitureSizeHeight=1..}] run scoreboard players operation #forward Steps = @s FurnitureSizeHeight
execute if entity @s[scores={FurnitureSizeUp=1..}] run scoreboard players operation #forward Steps = @s FurnitureSizeUp
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #forward Steps /= #2 Constants
execute if entity @s[scores={FurnitureSizeRadius=1..}] run scoreboard players set #forward Steps 0
execute if entity @s[scores={FurnitureSizeRadius=1..}] run scoreboard players operation #temp FurnitureSizeRadius = @s FurnitureSizeRadius
execute at @e[tag=collision_check,tag=z,limit=1] facing entity @s feet as @e[tag=collision_check,tag=z,limit=1] run function luigis_mansion:entities/furniture/type/swinging/harm
scoreboard players reset #swinging PositionX
scoreboard players reset #swinging PositionY
scoreboard players reset #swinging PositionZ
scoreboard players reset #forward Steps
scoreboard players reset #temp FurnitureSizeRadius
tag @s remove me
teleport @s ~ ~ ~
scoreboard players reset @e[tag=collision_check,tag=x,limit=1]
scoreboard players reset @e[tag=collision_check,tag=z,limit=1]
kill @e[tag=collision_check,tag=x,limit=1]
kill @e[tag=collision_check,tag=z,limit=1]