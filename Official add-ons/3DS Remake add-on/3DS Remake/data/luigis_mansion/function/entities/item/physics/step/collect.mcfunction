$execute if entity @s[tag=!no_shrunk,tag=!no_gooigi] run tag @e[tag=same_room,tag=luigi,distance=..$(pick_up_range),limit=1] add collector
$execute if entity @s[tag=!no_shrunk,tag=no_gooigi] run tag @e[tag=same_room,tag=luigi,distance=..$(pick_up_range),tag=!gooigi,limit=1] add collector
$execute if entity @s[tag=no_shrunk,tag=!no_gooigi] run tag @e[tag=same_room,tag=luigi,distance=..$(pick_up_range),scores={Shrunk=0},limit=1] add collector
$execute if entity @s[tag=no_shrunk,tag=no_gooigi] run tag @e[tag=same_room,tag=luigi,distance=..$(pick_up_range),scores={Shrunk=0},tag=!gooigi,limit=1] add collector
execute if entity @e[tag=collector,limit=1] run tag @s[tag=!dead] add picked_up
execute if entity @e[tag=vacuuming_me,tag=collector,limit=1] run tag @s[tag=!no_capture_sound,tag=!dead] add captured