teleport @s[tag=!dialog_animation] ~ ~ ~ ~-2 ~
execute positioned ^ ^ ^2.5 rotated as @s run teleport @s[tag=!dialog_animation] ^ ^ ^-2.5 ~ ~

execute unless entity @e[tag=boolossus,tag=talk,limit=1] run tag @p[gamemode=!spectator,distance=..2] add target
execute unless entity @e[tag=boolossus,tag=talk,limit=1] if entity @a[tag=target,limit=1] run tag @s add talk

execute if entity @s[tag=talk] run function luigis_mansion:dialog/boolossus/normal
execute if entity @s[tag=dialog_animation_start] run function luigis_mansion:entities/boolossus/dialog_animation