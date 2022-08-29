summon minecraft:marker ~ ~1.3 ~ {Tags:["collision_check","x","remove_from_existence"]}
teleport @e[tag=collision_check,tag=x,limit=1] ~ ~1.3 ~ ~ ~
scoreboard players operation #y Steps = @s FurnitureSizeY
execute as @e[tag=collision_check,tag=x,limit=1] run function luigis_mansion:entities/furniture/tick/swing/hit_pos/move