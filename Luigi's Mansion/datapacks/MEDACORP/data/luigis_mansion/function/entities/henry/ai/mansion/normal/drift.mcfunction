execute store result score @s[scores={WaitTime=61}] HomeRotationY run data get entity @s Rotation[0]
execute facing entity @e[tag=target,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
execute store result score #temp Time run data get entity @s Rotation[0]
scoreboard players operation #temp Time -= @s HomeRotationY
scoreboard players operation #temp2 Time = @s HomeRotationY
scoreboard players operation #temp3 Time = @s WaitTime
scoreboard players remove #temp3 Time 60
scoreboard players operation #temp Time /= #20 Constants
scoreboard players operation #temp Time *= #temp3 Time
execute store result entity @s Rotation[0] float 1 run scoreboard players operation #temp2 Time += #temp Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
execute at @s rotated ~ 0 run particle minecraft:dust{color:65535,scale:1f} ^0.3 ^ ^0.05 0 0 0 0 1 normal @a[tag=same_room]
execute at @s rotated ~ 0 run particle minecraft:dust{color:65535,scale:1f} ^-0.3 ^ ^0.05 0 0 0 0 1 normal @a[tag=same_room]
execute at @s rotated ~ 0 run particle minecraft:dust{color:65535,scale:1f} ^0.3 ^ ^1.05 0 0 0 0 1 normal @a[tag=same_room]
execute at @s rotated ~ 0 run particle minecraft:dust{color:65535,scale:1f} ^-0.3 ^ ^1.05 0 0 0 0 1 normal @a[tag=same_room]
execute at @s rotated ~ 0 run function luigis_mansion:entities/ghost/move_forward