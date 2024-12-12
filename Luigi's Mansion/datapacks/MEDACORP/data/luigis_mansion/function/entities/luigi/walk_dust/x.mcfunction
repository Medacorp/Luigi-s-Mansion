execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
scoreboard players operation #temp MirrorX *= #100 Constants
scoreboard players add #temp MirrorX 50
execute store result score #temp ActionTime run data get entity @s Pos[0] 100
scoreboard players operation #temp ActionTime -= #temp MirrorX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players operation #temp MirrorX -= #temp ActionTime
execute at @e[type=minecraft:marker,tag=temp,limit=1] run function luigis_mansion:entities/luigi/walk_dust/spawn
kill @e[type=minecraft:marker,tag=temp,limit=1]
scoreboard players reset #temp ActionTime