execute rotated ~ 0 positioned ^ ^-0.5 ^1.2 if entity @e[type=minecraft:marker,tag=position,distance=..1.19999,limit=1] if entity @s[scores={HurtTime=30..},tag=!dying,tag=!dialog] at @s run function luigis_mansion:items/poltergust_3000/vacuuming/hurt_ghost
execute rotated ~ 0 positioned ^ ^-0.5 ^1.2 if entity @e[type=minecraft:marker,tag=position,distance=..1.19999,limit=1] run tag @s add is_pulled
execute rotated ~ 0 positioned ^ ^-0.5 ^1.2 if entity @e[type=minecraft:marker,tag=position,distance=..1.19999,limit=1] run tag @a[tag=me,limit=1] add is_pulling
execute rotated as @a[tag=me,limit=1] positioned ^ ^ ^0.5 facing entity @s feet run function luigis_mansion:items/poltergust_3000/vacuuming/ghost_step
scoreboard players reset #temp Steps
tag @s remove being_vacuumed
execute if entity @a[tag=me,limit=1,tag=!vacuuming] run playsound luigis_mansion:item.poltergust_3000.vacuuming_start player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @a[tag=me,limit=1,tag=!vacuuming] Sound 20
execute if entity @a[tag=me,limit=1,tag=vacuuming,scores={Sound=0}] run playsound luigis_mansion:item.poltergust_3000.vacuuming player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @a[tag=me,limit=1,tag=vacuuming,scores={Sound=0}] Sound 20