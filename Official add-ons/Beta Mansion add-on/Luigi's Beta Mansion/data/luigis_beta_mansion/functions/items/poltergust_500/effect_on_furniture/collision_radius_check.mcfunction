scoreboard players operation #radius Steps = @s FurnitureRadius
#only up to 6 supported, minimum of 0.1
tag @s add me
execute at @s positioned ~ ~1.2 ~ as @e[tag=interact,limit=1] run function luigis_beta_mansion:items/poltergust_500/effect_on_furniture/hardcoded_radius
tag @s remove me
scoreboard players reset #radius Steps
kill @e[tag=collision_check,limit=1]