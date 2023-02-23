execute as @e[tag=ghost,tag=being_vacuumed] run function luigis_beta_mansion:items/poltergust_500/face_ghost/add_to_average
scoreboard players reset #temp2 PositionX
scoreboard players reset #temp2 PositionY
scoreboard players reset #temp2 PositionZ
summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute as @e[tag=temp,limit=1] run function luigis_beta_mansion:items/poltergust_500/face_ghost/get_average
execute at @s facing entity @e[tag=temp,limit=1] feet run teleport @s ~ ~ ~ ~ ~
kill @e[tag=temp,limit=1]
scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionY
scoreboard players reset #temp PositionZ