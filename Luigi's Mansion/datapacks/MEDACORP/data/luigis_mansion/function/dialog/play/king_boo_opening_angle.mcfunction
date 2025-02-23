execute facing entity @e[tag=same_room,tag=ghost,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute store result score #temp Time run data get entity @s Rotation[0]
teleport @s ~ ~ ~ ~ ~
execute store result score #temp2 Time run data get entity @s Rotation[0]
scoreboard players operation #temp Time -= #temp2 Time
execute if score #temp Time matches ..-181 run scoreboard players add #temp Time 360
execute if score #temp Time matches 180.. run scoreboard players remove #temp Time 360
execute if score #temp Time matches -3..3 run tag @s add dialog_no_turn
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time