function luigis_mansion:items/poltergust_3000/vacuuming/break_free_particle
execute positioned ^ ^0.5 ^ run function luigis_mansion:items/poltergust_3000/vacuuming/break_free_particle
execute positioned ^ ^-0.5 ^ run function luigis_mansion:items/poltergust_3000/vacuuming/break_free_particle
execute positioned ^0.5 ^ ^ run function luigis_mansion:items/poltergust_3000/vacuuming/break_free_particle
execute positioned ^-0.5 ^ ^ run function luigis_mansion:items/poltergust_3000/vacuuming/break_free_particle
execute unless entity @s[distance=..0.7] if score #temp Steps matches ..14 positioned ^ ^ ^0.5 run function luigis_mansion:items/poltergust_3000/vacuuming/break_free_step