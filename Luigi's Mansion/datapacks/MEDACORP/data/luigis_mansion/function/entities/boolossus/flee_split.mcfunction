execute if entity @s[tag=!flee_no_target] facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~-180 ~
data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"flee"}
scoreboard players operation #temp Move *= #3 Constants
execute if score #temp Move matches 1.. at @s run function luigis_mansion:entities/boo/move/forward