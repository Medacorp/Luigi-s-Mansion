function luigis_mansion:spawn_entities/ghost/forced_spawn/gold_ghost
tag @e[distance=..1,tag=hidden,limit=1] add no_attack
tag @e[distance=..1,tag=hidden,limit=1] add no_appear
tag @e[distance=..1,tag=hidden,limit=1] add disappear_on_vanish
scoreboard players set @e[distance=..1,tag=hidden,limit=1] Health 1000
scoreboard players set @e[distance=..1,tag=hidden,limit=1] LastHealth 1000