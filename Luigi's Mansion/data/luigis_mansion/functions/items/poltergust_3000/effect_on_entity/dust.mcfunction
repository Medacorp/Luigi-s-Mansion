execute positioned as @s if entity @a[gamemode=!spectator,distance=..1.2,limit=1] run tag @s[tag=ball,tag=can_spit_2] add spit
execute positioned as @s if entity @a[gamemode=!spectator,distance=..3,limit=1] run tag @s[tag=chauncey,tag=ball,tag=can_spit_2] add spit
execute positioned as @s if entity @a[gamemode=!spectator,distance=..3,limit=1] run tag @s[tag=spike_ball,tag=ball,tag=can_spit_2] add spit
execute unless entity @s[tag=haunted_object,tag=!moving] unless entity @s[tag=ball,tag=spit] positioned as @s if block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore unless entity @a[gamemode=!spectator,distance=..1.2,limit=1] run teleport @s[tag=!black_bogmire,tag=!boolossus] ^ ^ ^0.1
execute positioned as @s run teleport @s[tag=ball,tag=!spit] ~ ~ ~ ~ ~