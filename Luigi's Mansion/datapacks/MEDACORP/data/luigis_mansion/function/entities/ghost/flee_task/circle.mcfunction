tag @s[scores={FleeTime=1}] remove circle_right
execute if predicate luigis_mansion:50_50 run tag @s[scores={FleeTime=1}] add circle_right
execute facing entity @p[tag=!spectator,tag=vacuuming_me] feet run teleport @s[scores={FleeTime=1},tag=!circle_right] ~ ~ ~ ~-90 0
execute facing entity @p[tag=!spectator,tag=vacuuming_me] feet run teleport @s[scores={FleeTime=1},tag=circle_right] ~ ~ ~ ~90 0
execute if entity @s[tag=wall] run teleport @s ~ ~ ~ ~-180 ~
tag @s[tag=wall,tag=circle_right] add circle_toggle
tag @s[tag=circle_toggle] remove circle_right
tag @s[tag=circle_toggle] remove wall
tag @s[tag=circle_toggle] remove circle_toggle
tag @s[tag=wall] add circle_right
tag @s[tag=wall] remove wall

scoreboard players set #temp Time 18
execute if entity @s[tag=!circle_right] store result storage luigis_mansion:data macro.angle float 0.01 run scoreboard players operation #temp Time *= @s MoveFlee
execute if entity @s[tag=circle_right] store result storage luigis_mansion:data macro.angle float -0.01 run scoreboard players operation #temp Time *= @s MoveFlee
scoreboard players reset #temp Time
execute at @s run function luigis_mansion:entities/ghost/flee_task/circle_degrees with storage luigis_mansion:data macro


execute if score #temp MoveFlee matches 1.. at @s[tag=!ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move
execute if score #temp MoveFlee matches 1.. at @s[tag=ground_bound] rotated ~ 0 run function luigis_mansion:entities/ghost/flee_task/move_ground_bound