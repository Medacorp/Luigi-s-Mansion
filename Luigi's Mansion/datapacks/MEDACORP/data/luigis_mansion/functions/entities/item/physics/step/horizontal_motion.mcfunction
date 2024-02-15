execute store result score @s HomeY run data get entity @s Pos[1] 100
execute rotated ~ 0 if block ^ ^ ^0.1 #luigis_mansion:item_pull_ignore at @s run teleport @s ^ ^ ^0.1
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY