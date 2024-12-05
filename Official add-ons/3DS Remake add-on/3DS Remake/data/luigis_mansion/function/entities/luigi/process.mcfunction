execute if entity @s[tag=!no_ai] at @a[tag=this_player,tag=!separated_camera,limit=1] run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!no_ai,tag=third_person_movement] if entity @a[tag=this_player,tag=separated_camera,limit=1] unless entity @s[nbt={data:{animation:{}}},tag=!idle,tag=!animation_may_move,tag=!animation_free_rotation] run function luigis_mansion:entities/luigi/movement
execute at @s[tag=!no_ai,tag=!gooigi] run function luigis_mansion:entities/luigi/ai
execute at @s[tag=!no_ai,tag=gooigi] run function 3ds_remake:entities/gooigi/ai

execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @s ID
execute if entity @s[tag=!gooigi] run function luigis_mansion:animations/luigi with storage luigis_mansion:data macro
execute if entity @s[tag=gooigi] run function 3ds_remake:animations/gooigi