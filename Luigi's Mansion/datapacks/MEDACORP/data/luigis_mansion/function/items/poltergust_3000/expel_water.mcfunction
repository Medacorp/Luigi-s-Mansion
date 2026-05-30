scoreboard players set #temp PoltergustRange 10
execute positioned ^ ^ ^0.5 run function luigis_mansion:items/poltergust_3000/expel_water_step
scoreboard players reset #temp PoltergustRange
execute if entity @s[tag=!expelling_water] run playsound luigis_mansion:item.poltergust_3000.expelling.water_start player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!expelling_water] PoltergustSound 10
execute if entity @s[tag=expelling_water,scores={PoltergustSound=0}] run playsound luigis_mansion:item.poltergust_3000.expelling.water player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=expelling_water,scores={PoltergustSound=0}] PoltergustSound 20
scoreboard players reset @e[tag=same_room,tag=!model_piece,tag=affected_by_water,tag=!no_ai] LastPoltergustDistance