function luigis_mansion:spawn_entities/ghost/forced_spawn/garbage_can_ghost
tag @e[distance=..1,tag=hidden,limit=1] add attack
tag @e[distance=..1,tag=hidden,limit=1] add disappear_on_vanish
scoreboard players set @e[distance=..1,tag=hidden,limit=1] Health 4000
scoreboard players set @e[distance=..1,tag=hidden,limit=1] LastHealth 4000
scoreboard players set @e[distance=..1,tag=hidden,limit=1] Move 0
scoreboard players set @e[distance=..1,tag=hidden,limit=1] MoveFlee 20
scoreboard players set @e[distance=..1,tag=hidden,limit=1] GhostCaught 9