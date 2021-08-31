execute store result score #temp ActionTime run data get entity @e[tag=this_ghost,tag=!body,limit=1] Pose.Head[0]
execute as @e[tag=this_ghost,tag=body,limit=1] store result score #temp ActionTime run data get entity @s Pose.Head[0]
execute unless score #temp ActionTime matches -90..90 run teleport @s ~ ~ ~ ~180 ~
execute unless score #temp ActionTime matches ..-91 run scoreboard players add #temp ActionTime 180
execute unless score #temp ActionTime matches 91.. run scoreboard players remove #temp ActionTime 180
execute store result entity @s Rotation[0] float 1 run scoreboard players get #temp ActionTime
scoreboard players reset #temp ActionTime
execute at @s run function luigis_mansion:entities/health_display/move_step