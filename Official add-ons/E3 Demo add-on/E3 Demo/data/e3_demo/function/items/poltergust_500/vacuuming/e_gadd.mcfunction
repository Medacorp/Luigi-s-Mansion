execute positioned ^ ^ ^ run particle minecraft:dust{color:8355711,scale:0.7f} ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute positioned ^ ^0.5 ^ run particle minecraft:dust{color:8355711,scale:0.7f} ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute positioned ^ ^-0.5 ^ run particle minecraft:dust{color:8355711,scale:0.7f} ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute positioned ^0.5 ^ ^ run particle minecraft:dust{color:8355711,scale:0.7f} ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute positioned ^-0.5 ^ ^ run particle minecraft:dust{color:8355711,scale:0.7f} ~ ~ ~ 0 0 0 0 1 normal @a[tag=same_room]
execute unless entity @s[distance=..0.5] positioned ^ ^ ^0.5 run function e3_demo:items/poltergust_500/vacuuming/e_gadd
scoreboard players reset #temp Steps
execute if entity @e[tag=e_gadd,limit=1,tag=!vacuuming] run playsound e3_demo:item.poltergust_500.vacuuming_start player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @e[tag=e_gadd,limit=1,tag=!vacuuming] PoltergustSound 20
execute if entity @e[tag=e_gadd,limit=1,tag=vacuuming,scores={PoltergustSound=0}] run playsound e3_demo:item.poltergust_500.vacuuming player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @e[tag=e_gadd,limit=1,tag=vacuuming,scores={PoltergustSound=0}] PoltergustSound 20
tag @e[tag=e_gadd,limit=1] add vacuuming