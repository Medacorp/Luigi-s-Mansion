scoreboard players set #temp PoltergustRange 10
execute positioned ^ ^ ^0.5 run function luigis_mansion:items/poltergust_3000/expel_dust_step
scoreboard players reset #temp PoltergustRange
execute if entity @s[tag=!expelling_dust] run playsound luigis_mansion:item.poltergust_3000.expelling.dust_start player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!expelling_dust] PoltergustSound 10
execute if entity @s[tag=expelling_dust,scores={PoltergustSound=0}] run playsound luigis_mansion:item.poltergust_3000.expelling.dust player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=expelling_dust,scores={PoltergustSound=0}] PoltergustSound 20