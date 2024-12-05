execute positioned ^ ^ ^0.5 run function e3_demo:items/poltergust_500/water
execute positioned ^ ^ ^1 run function e3_demo:items/poltergust_500/water
execute positioned ^ ^ ^1.5 run function e3_demo:items/poltergust_500/water
execute positioned ^ ^ ^2 run function e3_demo:items/poltergust_500/water
execute positioned ^ ^ ^2.5 run function e3_demo:items/poltergust_500/water
execute positioned ^ ^ ^3 run function e3_demo:items/poltergust_500/water
execute positioned ^ ^ ^3.5 run function e3_demo:items/poltergust_500/water
execute positioned ^ ^ ^4 run function e3_demo:items/poltergust_500/water
execute if entity @s[tag=!expelling_water] run playsound e3_demo:item.poltergust_500.expelling.water_start player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!expelling_water] PoltergustSound 10
execute if entity @s[tag=expelling_water,scores={PoltergustSound=0}] run playsound e3_demo:item.poltergust_500.expelling.water player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=expelling_water,scores={PoltergustSound=0}] PoltergustSound 20
tag @e[tag=furniture,tag=hit] remove hit