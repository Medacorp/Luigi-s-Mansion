function luigis_mansion:spawn_entities/ghost/forced_spawn/blue_blaze
tag @e[distance=..1,tag=hidden,limit=1] add no_appear
tag @e[distance=..1,tag=hidden,limit=1] add disappear_on_vanish
scoreboard players set @e[distance=..1,tag=hidden,limit=1] Health 3000
scoreboard players set @e[distance=..1,tag=hidden,limit=1] LastHealth 3000
scoreboard players set @e[distance=..1,tag=hidden,limit=1] Move 5
scoreboard players set @e[distance=..1,tag=hidden,limit=1] MoveFlee 20
scoreboard players set @e[distance=..1,tag=hidden,limit=1] GhostCaught 7