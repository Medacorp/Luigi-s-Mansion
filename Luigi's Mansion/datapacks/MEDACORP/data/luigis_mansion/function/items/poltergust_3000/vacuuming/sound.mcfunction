execute if entity @s[tag=!vacuuming] run playsound luigis_mansion:item.poltergust_3000.vacuuming_start player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!vacuuming] PoltergustSound 20
execute if entity @s[tag=vacuuming,scores={PoltergustSound=0}] run playsound luigis_mansion:item.poltergust_3000.vacuuming player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=vacuuming,scores={PoltergustSound=0}] PoltergustSound 20
execute if entity @s[tag=vacuuming_fabric,scores={PoltergustSound=20}] run playsound luigis_mansion:item.poltergust_3000.catch_fabric player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=vacuuming_fabric,scores={PoltergustSound=15}] run playsound luigis_mansion:item.poltergust_3000.catch_fabric player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=vacuuming_fabric,scores={PoltergustSound=10}] run playsound luigis_mansion:item.poltergust_3000.catch_fabric player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=vacuuming_fabric,scores={PoltergustSound=5}] run playsound luigis_mansion:item.poltergust_3000.catch_fabric player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=vacuuming_poster,scores={PoltergustSound=20}] run playsound luigis_mansion:item.poltergust_3000.catch_poster player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=vacuuming_poster,scores={PoltergustSound=15}] run playsound luigis_mansion:item.poltergust_3000.catch_poster player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=vacuuming_poster,scores={PoltergustSound=10}] run playsound luigis_mansion:item.poltergust_3000.catch_poster player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=vacuuming_poster,scores={PoltergustSound=5}] run playsound luigis_mansion:item.poltergust_3000.catch_poster player @a[tag=same_room] ~ ~ ~ 1