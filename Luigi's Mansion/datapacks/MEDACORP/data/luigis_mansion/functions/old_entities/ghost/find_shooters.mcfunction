scoreboard players operation #temp ID = @s ID
execute as @e[tag=shot_fire] if score #temp ID = @s ID run tag @s add shot_element
execute as @e[tag=shot_water] if score #temp ID = @s ID run tag @s add shot_element
execute as @e[tag=shot_ice] if score #temp ID = @s ID run tag @s add shot_element
execute if entity @e[tag=shot_element,limit=1] run tag @s add shooter
tag @e[tag=shot_element,limit=1] remove shot_element
scoreboard players reset #temp ID