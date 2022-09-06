function luigis_mansion:spawn_entities/ghost/forced_spawn/ghost_guy
tag @e[distance=..1,tag=hidden,limit=1] add no_appear
tag @e[distance=..1,tag=hidden,limit=1] add disappear_on_vanish
execute if predicate luigis_mansion:50_50 run tag @e[distance=..1,tag=hidden,limit=1] add spin_attack
scoreboard players set @e[distance=..1,tag=hidden,limit=1] Health 2000
scoreboard players set @e[distance=..1,tag=hidden,limit=1] LastHealth 2000
scoreboard players set @e[distance=..1,tag=hidden,limit=1] Move 10
scoreboard players set @e[distance=..1,tag=hidden,limit=1] MoveFlee 20
scoreboard players set @e[distance=..1,tag=hidden,limit=1] GhostCaught 5