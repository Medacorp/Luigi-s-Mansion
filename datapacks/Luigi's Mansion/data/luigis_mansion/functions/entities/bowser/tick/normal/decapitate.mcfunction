tag @s remove vacuum
tag @s remove breathe_fire
tag @s remove decapitate
scoreboard players reset @s ActionTime
execute positioned ^ ^1 ^0.1 run function luigis_mansion:spawn_entities/portrait_ghost/king_boo
execute positioned ^ ^1 ^0.1 run tag @e[tag=king_boo,distance=..0.7,limit=1] add fight
teleport @s ^ ^2 ^-16