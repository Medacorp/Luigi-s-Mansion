scoreboard players operation #temp ID = @s ID
execute as @e[tag=gameboy_horror_marker] if score #temp ID = @s ID run tag @a[distance=..0.1,limit=1] add has_marker
execute if entity @s[tag=!has_marker] rotated as @s run function luigis_mansion:spawn_entities/gameboy_horror_marker
execute if entity @s[tag=!has_marker] rotated as @s as @e[distance=..1,tag=gameboy_horror_marker,limit=1] positioned as @s run function luigis_mansion:entities/gameboy_horror_marker/tick
tag @s remove has_marker
scoreboard players reset #temp ID