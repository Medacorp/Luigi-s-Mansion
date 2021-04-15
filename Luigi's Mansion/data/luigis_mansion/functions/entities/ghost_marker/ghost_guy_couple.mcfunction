scoreboard players operation #temp GhostGuyCouple = @s GhostGuyCouple
execute as @e[tag=ghost_guy,tag=ghost_marker,tag=dancing,distance=0.1..] if score @s GhostGuyCouple = #temp GhostGuyCouple run tag @s add me
scoreboard players reset #temp GhostGuyCouple
execute as @e[tag=me,limit=1] at @s if block ~ ~ ~ #minecraft:slabs[type=bottom] run teleport @s ~ ~-0.5 ~
execute as @e[tag=me,limit=1] at @s run function luigis_mansion:entities/ghost_marker/selection
execute if entity @e[tag=me,limit=1] run function luigis_mansion:entities/ghost_marker/selection