execute positioned ~ ~3 ~ run function luigis_mansion:spawn_entities/ghost/forced_spawn/purple_bomber
execute positioned ~ ~3 ~ run tag @e[distance=..1,tag=hidden,limit=1] add disappear_on_vanish
execute positioned ~ ~3 ~ run scoreboard players set @e[distance=..1,tag=hidden,limit=1] Health 1
execute positioned ~ ~3 ~ run scoreboard players set @e[distance=..1,tag=hidden,limit=1] LastHealth 1
execute positioned ~ ~3 ~ run scoreboard players set @e[distance=..1,tag=hidden,limit=1] Move 0
execute positioned ~ ~3 ~ run scoreboard players set @e[distance=..1,tag=hidden,limit=1] MoveFlee 0
execute positioned ~ ~3 ~ run scoreboard players set @e[distance=..1,tag=hidden,limit=1] GhostCaught 1