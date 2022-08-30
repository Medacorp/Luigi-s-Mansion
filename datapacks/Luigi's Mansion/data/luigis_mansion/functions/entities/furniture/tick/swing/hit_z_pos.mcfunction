summon minecraft:marker ~ ~1.3 ~ {Tags:["collision_check","z","remove_from_existence"]}
teleport @e[tag=collision_check,tag=z,limit=1] ~ ~1.3 ~ ~ ~
scoreboard players operation #forward Steps = @s FurnitureSizeY
execute as @e[tag=collision_check,tag=z,limit=1] at @s if score #forward Steps matches 1.. run function luigis_mansion:entities/furniture/tick/swing/hit_pos/move_forward