tag @e[tag=ball,distance=..2.5,tag=can_spit,sort=nearest,limit=1] add in_vacuum
execute if entity @s[tag=!was_clogged] run playsound luigis_mansion:item.poltergust_3000.catch_ball player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!was_clogged] Sound 5
execute if entity @s[tag=was_clogged,scores={Sound=0}] run playsound luigis_mansion:item.poltergust_3000.vacuuming_clogged player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=was_clogged,scores={Sound=0}] Sound 20
tag @s add was_clogged