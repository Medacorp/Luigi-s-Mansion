tag @e[tag=ball,distance=..2.5,tag=can_spit,sort=nearest,limit=1] add in_vacuum
execute if entity @s[tag=!was_clogged] run playsound luigis_beta_mansion:item.poltergust_500.catch_ball player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!was_clogged] PoltergustSound 5
execute if entity @s[tag=was_clogged,scores={PoltergustSound=0}] run playsound luigis_beta_mansion:item.poltergust_500.vacuuming_clogged player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=was_clogged,scores={PoltergustSound=0}] PoltergustSound 20
tag @s add was_clogged