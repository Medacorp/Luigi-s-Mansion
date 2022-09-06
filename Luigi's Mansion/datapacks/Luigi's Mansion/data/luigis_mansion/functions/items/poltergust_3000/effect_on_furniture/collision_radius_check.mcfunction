scoreboard players operation #radius Steps = @s FurnitureRadius
#only up to 6 supported, minimum of 0.1
tag @s add me
execute at @s positioned ~ ~1.4 ~ as @e[tag=interact,limit=1] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/hardcoded_radius
tag @s remove me
scoreboard players reset #radius Steps
kill @e[tag=collision_check,limit=1]