execute positioned ^ ^ ^0.5 run function luigis_mansion:items/poltergust_3000/dust
execute positioned ^ ^ ^1 run function luigis_mansion:items/poltergust_3000/dust
execute positioned ^ ^ ^1.5 run function luigis_mansion:items/poltergust_3000/dust
execute positioned ^ ^ ^2 run function luigis_mansion:items/poltergust_3000/dust
execute positioned ^ ^ ^2.5 run function luigis_mansion:items/poltergust_3000/dust
execute positioned ^ ^ ^3 run function luigis_mansion:items/poltergust_3000/dust
execute positioned ^ ^ ^3.5 run function luigis_mansion:items/poltergust_3000/dust
execute positioned ^ ^ ^4 run function luigis_mansion:items/poltergust_3000/dust
execute positioned ^ ^ ^4.5 run function luigis_mansion:items/poltergust_3000/dust
execute if entity @s[tag=!expelling_dust] run playsound luigis_mansion:item.poltergust_3000.expelling.dust_start player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!expelling_dust] PoltergustSound 10
execute if entity @s[tag=expelling_dust,scores={PoltergustSound=0}] run playsound luigis_mansion:item.poltergust_3000.expelling.dust player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=expelling_dust,scores={PoltergustSound=0}] PoltergustSound 20