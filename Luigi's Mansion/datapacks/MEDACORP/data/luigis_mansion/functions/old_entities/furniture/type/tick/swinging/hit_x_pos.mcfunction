summon minecraft:marker ~ ~1.4 ~ {Tags:["collision_check","x","remove_from_existence"]}
teleport @e[tag=collision_check,tag=x,limit=1] ~ ~1.4 ~ ~ ~
execute if entity @s[scores={FurnitureSizeHeight=1..}] run scoreboard players operation #forward Steps = @s FurnitureSizeHeight
execute if entity @s[scores={FurnitureSizeUp=1..}] run scoreboard players operation #forward Steps = @s FurnitureSizeUp
execute if entity @s[scores={FurnitureSizeRadius=1..}] run scoreboard players operation #forward Steps = @s FurnitureSizeRadius
execute if entity @s[scores={FurnitureSizeRadius=1..}] run scoreboard players operation #forward Steps /= #2 Constants
execute if entity @s[tag=!hanging_furniture] unless entity @s[scores={FurnitureSizeRadius=1..}] run scoreboard players operation #forward Steps /= #2 Constants
execute if entity @s[tag=!hanging_furniture,scores={FurnitureSizeRadius=1..}] run scoreboard players set #forward Steps 0
execute if entity @s[tag=standing_furniture] unless entity @s[scores={FurnitureSizeRadius=1..}] run scoreboard players set #forward Steps 0
execute if entity @s[tag=standing_furniture,scores={FurnitureSizeRadius=1..}] run scoreboard players operation #forward Steps *= #-1 Constants
execute as @e[tag=collision_check,tag=x,limit=1] at @s unless score #forward Steps matches 0 run function luigis_mansion:old_entities/furniture/type/tick/swinging/hit_pos/move_forward
execute store result entity @e[tag=collision_check,tag=x,limit=1] Rotation[0] float 0.1 run scoreboard players get #temp3 Time
execute store result entity @e[tag=collision_check,tag=x,limit=1] Rotation[1] float 0.1 run scoreboard players get #temp2 Time
execute as @e[tag=collision_check,tag=x,limit=1] store result score @s PositionX run data get entity @s Pos[0] 10
execute as @e[tag=collision_check,tag=x,limit=1] store result score @s PositionY run data get entity @s Pos[1] 10
execute as @e[tag=collision_check,tag=x,limit=1] store result score @s PositionZ run data get entity @s Pos[2] 10
scoreboard players operation @e[tag=collision_check,tag=x,limit=1] PositionX -= @s PositionX
scoreboard players operation @e[tag=collision_check,tag=x,limit=1] PositionY -= @s PositionY
scoreboard players operation @e[tag=collision_check,tag=x,limit=1] PositionZ -= @s PositionZ

execute as @e[tag=collision_check,tag=x,limit=1] run function luigis_mansion:old_entities/furniture/type/tick/swinging/hit_pos/make_pos_relative