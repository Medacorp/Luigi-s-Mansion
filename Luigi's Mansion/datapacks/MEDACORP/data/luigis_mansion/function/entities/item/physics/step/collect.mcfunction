$execute if entity @s[tag=!no_shrunk] run tag @e[tag=same_room,tag=luigi,distance=..$(pick_up_range),limit=1] add collector
$execute if entity @s[tag=no_shrunk] run tag @e[tag=same_room,tag=luigi,distance=..$(pick_up_range),scores={Shrunk=0},limit=1] add collector
execute if entity @e[tag=collector,limit=1] run tag @s add picked_up