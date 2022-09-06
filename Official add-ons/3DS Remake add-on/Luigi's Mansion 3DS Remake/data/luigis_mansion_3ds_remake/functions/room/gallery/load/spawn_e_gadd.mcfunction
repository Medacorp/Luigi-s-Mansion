execute if data storage luigis_mansion:data {found_e_gadd:1b} positioned 772.0 2 -17.0 unless entity @e[distance=..0.7,tag=e_gadd,limit=1] run function luigis_mansion:spawn_entities/e_gadd
execute if data storage luigis_mansion:data {found_e_gadd:1b} positioned 772.0 2 -17.0 run tag @e[distance=..0.7,tag=e_gadd,limit=1] add can_talk_to
