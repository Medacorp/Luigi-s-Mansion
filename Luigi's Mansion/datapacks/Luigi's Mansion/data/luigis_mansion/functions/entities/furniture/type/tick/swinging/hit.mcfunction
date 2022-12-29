execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["temp","remove_from_existence"]}
data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[1]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #cosx Time run data get entity @e[tag=temp,limit=1] Pos[2] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score #cosy Time run data get entity @e[tag=temp,limit=1] Pos[2] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[1]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #sinx Time run data get entity @e[tag=temp,limit=1] Pos[0] 10

data modify entity @e[tag=temp,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score #siny Time run data get entity @e[tag=temp,limit=1] Pos[0] 10

kill @e[tag=temp,limit=1]

execute store result score #temp3 Time run data get entity @s Rotation[0] 10
execute store result score #temp2 Time run data get entity @s Rotation[1] 10
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if score #temp Time matches 1.. run teleport @s ~ ~ ~ ~-180 ~
execute if score #temp Time matches 1.. run scoreboard players operation #temp Time *= #-1 Constants
scoreboard players add #temp Time 900
execute store result entity @s Rotation[1] float 0.1 run scoreboard players operation #temp Time += #temp2 Time
execute at @s run function luigis_mansion:entities/furniture/type/tick/swinging/hit_x_pos
execute store result score #temp Time run data get entity @s Pose.Head[2] 10
execute if score #temp Time matches ..-1 run teleport @s ~ ~ ~ ~-90 ~
execute if score #temp Time matches 1.. run teleport @s ~ ~ ~ ~90 ~
execute if score #temp Time matches 1.. run scoreboard players operation #temp Time *= #-1 Constants
scoreboard players add #temp Time 900
execute store result entity @s Rotation[1] float 0.1 run scoreboard players operation #temp Time += #temp2 Time
execute at @s run function luigis_mansion:entities/furniture/type/tick/swinging/hit_z_pos
teleport @s ~ ~1.4 ~ ~ ~
scoreboard players reset #cosx
scoreboard players reset #cosy
scoreboard players reset #sinx
scoreboard players reset #siny
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
scoreboard players operation @e[tag=collision_check,tag=z,limit=1] Steps = @e[tag=collision_check,tag=x,limit=1] FurnitureSizeU
execute as @e[tag=collision_check,tag=z,limit=1] run scoreboard players operation @s Steps > @s FurnitureSizeU
scoreboard players operation @e[tag=collision_check,tag=z,limit=1] FurnitureSizeF = @e[tag=collision_check,tag=x,limit=1] FurnitureSizeF
execute as @e[tag=collision_check,tag=z,limit=1] at @s unless entity @s[scores={FurnitureSizeF=0}] run function luigis_mansion:entities/furniture/type/tick/swinging/hit_pos/merge
execute as @e[tag=collision_check,tag=z,limit=1] at @s unless score @s Steps = @s FurnitureSizeU run function luigis_mansion:entities/furniture/type/tick/swinging/hit_pos/set_to_highest_y
tag @s add me
execute if entity @s[scores={FurnitureSizeH=1..}] run scoreboard players operation #forward Steps = @s FurnitureSizeH
execute if entity @s[scores={FurnitureSizeU=1..}] run scoreboard players operation #forward Steps = @s FurnitureSizeU
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #forward Steps /= #2 Constants
execute at @e[tag=collision_check,tag=z,limit=1] facing entity @s feet as @e[tag=collision_check,tag=z,limit=1] run function luigis_mansion:entities/furniture/type/tick/swinging/harm
scoreboard players reset #swinging PosX
scoreboard players reset #swinging PosY
scoreboard players reset #swinging PosZ
scoreboard players reset #forward Steps
tag @s remove me
teleport @s ~ ~ ~
scoreboard players reset @e[tag=collision_check,tag=x,limit=1]
scoreboard players reset @e[tag=collision_check,tag=z,limit=1]
kill @e[tag=collision_check,tag=x,limit=1]
kill @e[tag=collision_check,tag=z,limit=1]