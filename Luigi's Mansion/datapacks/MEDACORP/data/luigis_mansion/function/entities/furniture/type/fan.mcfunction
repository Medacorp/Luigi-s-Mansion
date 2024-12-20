tag @s add no_visual_shake_animation
tag @s[tag=in_vacuum,tag=searchable_by_vacuum] add increase_speed
tag @s[tag=in_dust,tag=searchable_by_dust] add increase_speed
tag @s[tag=in_fire,tag=searchable_by_fire] add increase_speed
tag @s[tag=in_water,tag=searchable_by_water] add increase_speed
tag @s[tag=in_ice,tag=searchable_by_ice] add increase_speed
execute if entity @s[tag=!increase_speed] if score @s FurnitureRotationSpeed > @s FurnitureRotationSpeedDefault run function luigis_mansion:entities/furniture/type/fan/decrease_speed
execute if entity @s[tag=increase_speed] run function luigis_mansion:entities/furniture/type/fan/increase_speed
execute unless entity @s[scores={FurnitureRotationSpeed=0}] run function luigis_mansion:entities/furniture/type/fan/turn

execute if score @s FurnitureRotationSpeed >= @s FurnitureSearch if entity @s[tag=!searched,tag=in_vacuum,tag=searchable_by_vacuum] run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=vacuuming_me,sort=nearest,limit=1] ID
execute if score @s FurnitureRotationSpeed >= @s FurnitureSearch if entity @s[tag=!searched,tag=in_dust,tag=searchable_by_dust] run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=dusting_me,sort=nearest,limit=1] ID
execute if score @s FurnitureRotationSpeed >= @s FurnitureSearch if entity @s[tag=!searched,tag=in_fire,tag=searchable_by_fire] run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=burning_me,sort=nearest,limit=1] ID
execute if score @s FurnitureRotationSpeed >= @s FurnitureSearch if entity @s[tag=!searched,tag=in_water,tag=searchable_by_water] run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=watering_me,sort=nearest,limit=1] ID
execute if score @s FurnitureRotationSpeed >= @s FurnitureSearch if entity @s[tag=!searched,tag=in_ice,tag=searchable_by_ice] run scoreboard players operation @s SearcherID = @e[tag=same_room,tag=freezing_me,sort=nearest,limit=1] ID
execute if score @s FurnitureRotationSpeed >= @s FurnitureSearch if entity @s[tag=!searched] run function luigis_mansion:entities/furniture/search/generic
execute unless score @s FurnitureRotationSpeed >= @s FurnitureShake run tag @s remove searched