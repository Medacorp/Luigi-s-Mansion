teleport @s[tag=!dialog_animation] ~ ~ ~ ~-2 ~
execute positioned ^ ^ ^2.5 rotated as @s run teleport @s[tag=!dialog_animation] ^ ^ ^-2.5 ~ ~

execute unless entity @e[tag=boolossus,tag=talk,limit=1] run tag @p[tag=!spectator,tag=player,distance=..2] add boolossus_target
execute unless entity @e[tag=boolossus,tag=talk,limit=1] if entity @a[tag=target,limit=1] run tag @s add talk
execute as @a[tag=target] run trigger GBHChoice set 0

function luigis_mansion:animations/boo/idle
execute if entity @s[tag=talk] run function luigis_mansion:dialog/boolossus/hidden
execute if entity @s[tag=dialog_animation_start] run function luigis_mansion:entities/boolossus/dialog_animation