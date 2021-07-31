scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=spawned_heart] if score @s GhostNr = #temp GhostNr run tag @s add this_ghost
scoreboard players reset #temp GhostNr
execute at @e[tag=this_ghost,tag=!ceiling_ghost,limit=1] run teleport @s ~ ~-0.2 ~ ~ ~
execute at @e[tag=this_ghost,tag=ceiling_ghost,limit=1] run teleport @s ~ ~0.8 ~ ~ ~
execute at @s[tag=burning] run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0 1
execute at @s[tag=watery] run particle minecraft:rain ~ ~1 ~ 0.2 0.2 0.2 0 1
execute at @s[tag=frozen] run particle minecraft:firework ~ ~1 ~ 0.2 0.2 0.2 0 1
execute unless entity @e[tag=this_ghost,limit=1] run tag @s add dead
tag @e[tag=this_ghost] remove this_ghost