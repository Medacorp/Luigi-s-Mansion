teleport @s ^ ^ ^0.2
data modify entity @s data.target_pos set from entity @s Pos
execute store result score #temp Time run data get entity @s Rotation[0] -1
execute facing entity @e[tag=target,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
execute store result score #temp2 Time run data get entity @s Rotation[0]
teleport @s ~ ~ ~
execute at @s rotated ~ 0 run particle minecraft:dust{color:65535,scale:1f} ^0.3 ^ ^0.05 0 0 0 0 1 normal @a[tag=same_room]
execute at @s rotated ~ 0 run particle minecraft:dust{color:65535,scale:1f} ^-0.3 ^ ^0.05 0 0 0 0 1 normal @a[tag=same_room]
scoreboard players operation #temp3 Time = #temp Time
scoreboard players operation #temp Time -= #temp2 Time
execute if score #temp Time matches ..-181 run scoreboard players add #temp Time 360
execute if score #temp Time matches 180.. run scoreboard players remove #temp Time 360
scoreboard players operation #temp Time /= #10 Constants
execute store result entity @s Rotation[0] float 1 run scoreboard players operation #temp3 Time += #temp Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time