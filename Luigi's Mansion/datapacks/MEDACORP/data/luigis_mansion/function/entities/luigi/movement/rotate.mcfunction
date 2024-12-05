execute if data storage luigis_mansion:data luigi.movement{y_rot:0f} if entity @s[tag=!poltergust_selected] unless entity @s[tag=dark_room,tag=sidestep_movement] store result score #temp Time run data get entity @s Rotation[1]
$execute if data storage luigis_mansion:data luigi.movement{y_rot:0f} unless data storage luigis_mansion:data luigi.movement{x:0f,z:0f} if entity @s[tag=!poltergust_selected] unless entity @s[tag=dark_room,tag=sidestep_movement] run rotate @s facing ~$(x) ~ ~$(z)
execute if data storage luigis_mansion:data luigi.movement{y_rot:0f} if entity @s[tag=!poltergust_selected] unless entity @s[tag=dark_room,tag=sidestep_movement] store result entity @s Rotation[1] float 1 run scoreboard players get #temp Time
scoreboard players reset #temp Time
$execute unless entity @s[tag=!dark_room,tag=!poltergust_selected] rotated as @s run rotate @s ~$(y_rot) ~$(x_rot)
$execute if entity @s[tag=!dark_room,tag=!poltergust_selected] rotated as @s run rotate @s ~$(y_rot) 0