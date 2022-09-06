function luigis_mansion:spawn_entities/ghost/speedy_spirit
tag @e[distance=..1,tag=hidden,limit=1] add spawn
tag @e[distance=..1,tag=hidden,limit=1] remove disappear_on_vanish
scoreboard players set @e[distance=..1,tag=hidden,limit=1] Health 25000
scoreboard players set @e[distance=..1,tag=hidden,limit=1] LastHealth 25000
scoreboard players set @e[distance=..1,tag=hidden,limit=1] Move 100
scoreboard players set @e[distance=..1,tag=hidden,limit=1] MoveFlee 100
scoreboard players set @e[distance=..1,tag=hidden,limit=1] GhostCaught 1