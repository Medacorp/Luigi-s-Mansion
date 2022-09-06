scoreboard players operation #temp ID = @s ID
execute as @a[tag=death_animation,tag=!revive_animation] if score @s ID = #temp ID run tag @s add me
execute if entity @s[tag=talk] run tag @a[tag=me,limit=1] add revive_animation
execute unless entity @a[tag=me,limit=1] run tag @s add remove_from_existence
scoreboard players reset #temp ID
tag @a[tag=me,limit=1] remove me