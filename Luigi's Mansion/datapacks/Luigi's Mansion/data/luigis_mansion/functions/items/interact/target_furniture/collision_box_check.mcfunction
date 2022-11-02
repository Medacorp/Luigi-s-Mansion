execute at @s run summon minecraft:marker ~ ~1.4 ~ {Tags:["collision_check","remove_from_existence"]}
scoreboard players operation #x Steps = @s FurnitureSizeX
scoreboard players operation #x Steps /= #2 Constants
scoreboard players operation #x Steps *= #10 Constants
scoreboard players operation #x Time = @s FurnitureSizeX
scoreboard players operation #x Time %= #2 Constants
scoreboard players operation #y Steps = @s FurnitureSizeY
execute if entity @s[tag=standing_furniture] run scoreboard players set #y Steps 0
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #y Steps /= #2 Constants
scoreboard players operation #y Steps *= #10 Constants
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #y Time = @s FurnitureSizeY
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #y Time %= #2 Constants
scoreboard players operation #z Steps = @s FurnitureSizeZ
scoreboard players operation #z Steps /= #2 Constants
scoreboard players operation #z Steps *= #10 Constants
scoreboard players operation #z Time = @s FurnitureSizeZ
scoreboard players operation #z Time %= #2 Constants
execute as @e[tag=collision_check,limit=1] run function luigis_mansion:items/interact/target_furniture/move
scoreboard players operation #x Steps = @s FurnitureSizeX
scoreboard players remove #x Steps 1
scoreboard players operation #y Steps = @s FurnitureSizeY
scoreboard players remove #y Steps 1
scoreboard players operation #z Steps = @s FurnitureSizeZ
scoreboard players remove #z Steps 1
#only up to 10x10x10 supported, minimum of 1x1x1
tag @s add me
execute as @e[tag=this_interact,limit=1] at @e[tag=collision_check,limit=1] run function luigis_mansion:items/interact/target_furniture/hardcoded_bounding_box
tag @s remove me
scoreboard players reset #x
scoreboard players reset #y
scoreboard players reset #z
kill @e[tag=collision_check,limit=1]