execute positioned as @s[tag=big,tag=ball,tag=can_spit_2] if entity @a[gamemode=!spectator,distance=..3,limit=1] run tag @s add spit
execute positioned as @s[tag=big,tag=ball,tag=spit] if block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore unless entity @a[gamemode=!spectator,distance=..1.2,limit=1] run teleport @s ^ ^ ^0.1
execute positioned as @s[tag=big,tag=ball,tag=!spit] run teleport @s ~ ~ ~ ~ ~