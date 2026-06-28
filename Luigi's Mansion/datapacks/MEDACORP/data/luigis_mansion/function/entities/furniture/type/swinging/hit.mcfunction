execute store result score #x_percentage Time run data get entity @s transformation.left_rotation[0] 141
execute store result score #z_percentage Time run data get entity @s transformation.left_rotation[2] -141
execute store result storage luigis_mansion:data macro.x float 0.01 run scoreboard players get #x_percentage Time
execute store result storage luigis_mansion:data macro.z float 0.01 run scoreboard players get #z_percentage Time
execute if score #x_percentage Time matches ..-1 run scoreboard players operation #x_percentage Time *= #-1 Constants
execute if score #z_percentage Time matches ..-1 run scoreboard players operation #z_percentage Time *= #-1 Constants
scoreboard players set #y_percentage Time 100
scoreboard players operation #y_percentage Time -= #x_percentage Time
execute store result storage luigis_mansion:data macro.y float 0.01 run scoreboard players operation #y_percentage Time -= #z_percentage Time
function luigis_mansion:entities/furniture/type/swinging/hit_direction with storage luigis_mansion:data macro
scoreboard players reset #x_percentage Time
scoreboard players reset #y_percentage Time
scoreboard players reset #z_percentage Time
scoreboard players set #forward Steps 0
execute if entity @s[scores={FurnitureSizeHeight=1..}] run scoreboard players operation #forward Steps = @s FurnitureSizeHeight
execute if entity @s[scores={FurnitureSizeUp=1..}] run scoreboard players operation #forward Steps = @s FurnitureSizeUp
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #forward Steps /= #2 Constants
execute if entity @s[scores={FurnitureSizeRadius=1..}] run scoreboard players operation #forward Steps = @s FurnitureSizeRadius
execute if entity @s[scores={FurnitureSizeRadius=1..}] unless entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #forward Steps *= #2 Constants
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #backward Steps = #forward Steps
execute if entity @s[tag=standing_furniture] run scoreboard players set #forward Steps 0
execute if entity @s[scores={FurnitureSizeWidth=1..}] run scoreboard players operation #size Steps = @s FurnitureSizeWidth
execute if entity @s[scores={FurnitureSizeLeft=1..}] run scoreboard players operation #size Steps = @s FurnitureSizeLeft
execute if entity @s[scores={FurnitureSizeLeft=1..}] run scoreboard players operation #size Steps += @s FurnitureSizeForward
execute if entity @s[scores={FurnitureSizeLeft=1..}] run scoreboard players operation #size Steps /= #2 Constants
scoreboard players operation #size Steps /= #2 Constants
execute if entity @s[scores={FurnitureSizeRadius=1..}] run scoreboard players operation #size Steps = @s FurnitureSizeRadius
tag @s add me
execute as @e[tag=collision_check,limit=1] facing entity @s feet run function luigis_mansion:entities/furniture/type/swinging/harm
tag @s remove me
scoreboard players reset #swinging PositionX
scoreboard players reset #swinging PositionY
scoreboard players reset #swinging PositionZ
scoreboard players reset #forward Steps
scoreboard players reset #backward Steps
scoreboard players reset #size Steps
scoreboard players reset @e[tag=collision_check,limit=1]
kill @e[tag=collision_check,limit=1]