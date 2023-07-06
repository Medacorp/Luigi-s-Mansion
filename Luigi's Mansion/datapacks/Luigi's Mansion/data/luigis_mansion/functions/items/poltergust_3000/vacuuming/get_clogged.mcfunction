tag @e[tag=ball,distance=..1.5,tag=can_spit,sort=nearest,limit=1] add in_vacuum
tag @e[tag=ball,tag=big,distance=..3,tag=can_spit,sort=nearest,limit=1] add in_vacuum
execute if entity @s[tag=!was_clogged] run playsound luigis_mansion:item.poltergust_3000.catch_ball player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!was_clogged] PoltergustSound 5
execute if entity @s[tag=was_clogged,scores={PoltergustSound=0}] run playsound luigis_mansion:item.poltergust_3000.vacuuming_clogged player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=was_clogged,scores={PoltergustSound=0}] PoltergustSound 20
tag @s add was_clogged