execute if entity @a[tag=vacuuming,distance=..1.2,limit=1] run tag @s add normal_death
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get @a[tag=vacuuming,distance=..1.2,sort=nearest,limit=1] ID
execute if entity @a[tag=vacuuming,distance=..1.2,limit=1] run function luigis_mansion:items/poltergust_3000/latch_onto_ghost with storage luigis_mansion:data macro