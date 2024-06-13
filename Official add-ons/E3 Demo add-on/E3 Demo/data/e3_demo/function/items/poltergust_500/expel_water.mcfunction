execute positioned ^ ^ ^0.5 facing entity @s feet rotated ~-180 ~ run function e3_demo:items/poltergust_500/water
execute positioned ^ ^ ^1 facing entity @s feet rotated ~-180 ~ run function e3_demo:items/poltergust_500/water
execute positioned ^ ^ ^1.5 facing entity @s feet rotated ~-180 ~ run function e3_demo:items/poltergust_500/water
execute positioned ^ ^ ^2 facing entity @s feet rotated ~-180 ~ run function e3_demo:items/poltergust_500/water
execute positioned ^ ^ ^2.5 facing entity @s feet rotated ~-180 ~ run function e3_demo:items/poltergust_500/water
execute positioned ^ ^ ^3 facing entity @s feet rotated ~-180 ~ run function e3_demo:items/poltergust_500/water
execute positioned ^ ^ ^3.5 facing entity @s feet rotated ~-180 ~ run function e3_demo:items/poltergust_500/water
execute positioned ^ ^ ^4 facing entity @s feet rotated ~-180 ~ run function e3_demo:items/poltergust_500/water
execute if entity @s[tag=!expelling_water] run playsound e3_demo:item.poltergust_500.expelling.water_start player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!expelling_water] PoltergustSound 10
execute if entity @s[tag=expelling_water,scores={PoltergustSound=0}] run playsound e3_demo:item.poltergust_500.expelling.water player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=expelling_water,scores={PoltergustSound=0}] PoltergustSound 20
tag @e[tag=furniture,tag=hit] remove hit