execute unless entity @e[tag=facing_ghost,limit=1] if data storage luigis_mansion:data my_memory.poltergust_latch_on_order[0] run function e3_demo:items/poltergust_500/face_ghost/loop
execute at @s facing entity @e[tag=facing_ghost,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tag @e[tag=facing_ghost,limit=1] remove facing_ghost