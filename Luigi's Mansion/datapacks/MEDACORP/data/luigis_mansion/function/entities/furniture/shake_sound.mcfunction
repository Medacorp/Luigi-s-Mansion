execute store result score #temp ID run scoreboard players get @s ShakerID
execute as @a if score @s ID = #temp ID run tag @s add searcher
scoreboard players reset #temp ID
$function $(namespace):entities/furniture/shake_sound/$(id)
tag @a[tag=searcher,limit=1] remove searcher