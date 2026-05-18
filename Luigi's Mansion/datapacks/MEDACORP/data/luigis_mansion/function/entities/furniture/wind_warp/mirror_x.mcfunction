scoreboard players operation #temp MirrorX = @e[tag=me,limit=1] MirrorX
scoreboard players operation #temp MirrorX *= #100 Constants
scoreboard players add #temp MirrorX 50
execute store result score #temp ActionTime run data get entity @s Pos[0] 100
scoreboard players operation #temp ActionTime -= #temp MirrorX
execute store result entity @s Pos[0] double 0.01 run scoreboard players operation #temp MirrorX -= #temp ActionTime
execute store result entity @s Rotation[0] float -0.01 run data get entity @s Rotation[0] 100
execute at @s run particle minecraft:dust{color:8355839,scale:2f} ^ ^ ^0.5 0 0 0 0 1 normal @a[tag=same_room]
execute at @s run particle minecraft:dust{color:8355839,scale:1.5f} ^ ^ ^0.167 0 0 0 0 1 normal @a[tag=same_room]
execute at @s run particle minecraft:dust{color:8355839,scale:1f} ^ ^ ^-0.167 0 0 0 0 1 normal @a[tag=same_room]
execute at @s run particle minecraft:dust{color:8355839,scale:0.5f} ^ ^ ^-0.5 0 0 0 0 1 normal @a[tag=same_room]
teleport @s ~ ~ ~
scoreboard players reset #temp ActionTime
scoreboard players reset #temp MirrorX