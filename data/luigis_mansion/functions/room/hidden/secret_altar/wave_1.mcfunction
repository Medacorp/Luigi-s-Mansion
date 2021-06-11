execute positioned 639 93 33 rotated 90 0 run function luigis_mansion:spawn_entities/portrait_ghost/king_boo
execute positioned 639 93 33 run tag @e[tag=king_boo,distance=..0.7,limit=1] add secret_altar
scoreboard players set #secret_altar Wave 1