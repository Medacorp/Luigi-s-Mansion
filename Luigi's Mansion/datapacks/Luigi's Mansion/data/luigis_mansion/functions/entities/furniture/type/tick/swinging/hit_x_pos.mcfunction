summon minecraft:marker ~ ~1.4 ~ {Tags:["collision_check","x","remove_from_existence"]}
teleport @e[tag=collision_check,tag=x,limit=1] ~ ~1.4 ~ ~ ~
execute if entity @s[scores={FurnitureSizeH=1..}] run scoreboard players operation #forward Steps = @s FurnitureSizeH
execute if entity @s[scores={FurnitureSizeU=1..}] run scoreboard players operation #forward Steps = @s FurnitureSizeU
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #forward Steps /= #2 Constants
execute if entity @s[tag=standing_furniture] run scoreboard players set #forward Steps 0
execute as @e[tag=collision_check,tag=x,limit=1] at @s if score #forward Steps matches 1.. run function luigis_mansion:entities/furniture/type/tick/swinging/hit_pos/move_forward
execute store result entity @e[tag=collision_check,tag=x,limit=1] Rotation[0] float 0.1 run scoreboard players get #temp3 Time
execute store result entity @e[tag=collision_check,tag=x,limit=1] Rotation[1] float 0.1 run scoreboard players get #temp2 Time
execute as @e[tag=collision_check,tag=x,limit=1] store result score @s PosX run data get entity @s Pos[0] 10
execute as @e[tag=collision_check,tag=x,limit=1] store result score @s PosY run data get entity @s Pos[1] 10
execute as @e[tag=collision_check,tag=x,limit=1] store result score @s PosZ run data get entity @s Pos[2] 10
scoreboard players operation @e[tag=collision_check,tag=x,limit=1] PosX -= @s PosX
scoreboard players operation @e[tag=collision_check,tag=x,limit=1] PosY -= @s PosY
scoreboard players operation @e[tag=collision_check,tag=x,limit=1] PosZ -= @s PosZ

execute as @e[tag=collision_check,tag=x,limit=1] run function luigis_mansion:entities/furniture/type/tick/swinging/hit_pos/make_pos_relative