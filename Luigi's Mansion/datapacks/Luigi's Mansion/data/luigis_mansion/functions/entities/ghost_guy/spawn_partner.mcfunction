tag @s add me
scoreboard players operation #temp GhostGuyCouple = @s GhostGuyCouple
execute as @e[tag=ghost_guy,tag=ghost,tag=hidden,tag=can_spawn,tag=dancing,distance=0.1..] if score @s GhostGuyCouple = #temp GhostGuyCouple run tag @s add partner
execute as @e[tag=partner,limit=1] at @s if entity @e[tag=!me,tag=!partner,tag=!model_piece,tag=!hidden,distance=..0.7] if block ~ ~ ~ #luigis_mansion:all_ignore run tag @s remove partner
execute as @e[tag=partner,limit=1] at @s if entity @e[tag=!me,tag=!partner,tag=!model_piece,tag=!hidden,distance=..0.7] unless entity @e[type=minecraft:item_frame,distance=..0.7] run tag @s remove partner
execute as @e[tag=partner,limit=1] at @s if entity @a[distance=..1.5] if block ~ ~ ~ #luigis_mansion:all_ignore run tag @s remove partner
scoreboard players reset #temp GhostGuyCouple
tag @s remove me
execute as @e[tag=partner,limit=1] at @s if block ~ ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~-0.5 ~
execute as @e[tag=partner,limit=1] at @s run function luigis_mansion:entities/ghost/hidden/selection
execute if entity @e[tag=partner,limit=1] if block ~ ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~-0.5 ~
execute if entity @e[tag=partner,limit=1] run function luigis_mansion:entities/ghost/hidden/selection
tag @e[tag=partner,limit=1] add appear
tag @e[tag=partner,limit=1] remove spawn
tag @e[tag=partner,limit=1] remove partner