scoreboard players operation #temp ID = @s ID
execute as @a[tag=dead_player] if score @s ID = #temp ID run tag @s add this_luigi
scoreboard players reset #temp ID
execute unless entity @a[tag=this_luigi,limit=1] run tag @s add dead
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s ID
execute at @s as @a[tag=this_luigi,limit=1] run function luigis_mansion:animations/luigi with storage luigis_mansion:data macro