scoreboard players add @s ActionTime 1
teleport @s[scores={ActionTime=1..6}] ~ ~0.4 ~
teleport @s[scores={ActionTime=15..20}] ~ ~-0.4 ~
execute positioned ~-1 ~ ~-1 if entity @e[dx=1,dy=1,dz=1,tag=luigi,limit=1] run function luigis_mansion:entities/ice_spikes/hit_player
tag @s[scores={ActionTime=20}] add dead