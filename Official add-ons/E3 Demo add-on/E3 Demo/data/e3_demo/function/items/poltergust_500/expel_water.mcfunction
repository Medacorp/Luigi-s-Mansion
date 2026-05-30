scoreboard players set #temp PoltergustRange 10
execute positioned ^ ^ ^0.5 run function e3_demo:items/poltergust_500/expel_water_step
scoreboard players reset #temp PoltergustRange
execute if entity @s[tag=!expelling_water] run playsound e3_demo:item.poltergust_500.expelling.water_start player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!expelling_water] PoltergustSound 10
execute if entity @s[tag=expelling_water,scores={PoltergustSound=0}] run playsound e3_demo:item.poltergust_500.expelling.water player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=expelling_water,scores={PoltergustSound=0}] PoltergustSound 20
tag @e[tag=furniture,tag=hit] remove hit