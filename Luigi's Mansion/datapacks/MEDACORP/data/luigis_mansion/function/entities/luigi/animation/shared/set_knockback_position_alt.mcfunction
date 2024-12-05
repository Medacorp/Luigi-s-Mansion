summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute store result score @s KnockbackX run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] 100
execute store result score @s KnockbackZ run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] 100
execute at @s as @e[type=minecraft:marker,tag=temp,limit=1] facing entity @s feet positioned as @s run teleport @s ~ ~ ~ ~ ~
execute store result score #temp Time run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Rotation[0]
kill @e[type=minecraft:marker,tag=temp,limit=1]
execute store result score #temp2 Time run data get entity @s Rotation[0]
scoreboard players operation #temp Time -= #temp2 Time
scoreboard players reset #temp2 Time
execute if score #temp Time matches ..-181 run scoreboard players add #temp Time 360
execute if score #temp Time matches 180.. run scoreboard players remove #temp Time 360