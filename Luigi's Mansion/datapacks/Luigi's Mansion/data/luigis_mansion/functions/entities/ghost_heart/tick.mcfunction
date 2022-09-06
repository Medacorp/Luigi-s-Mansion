scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=body] if score @s GhostNr = #temp GhostNr run tag @s add this_ghost
execute as @e[tag=spawned_heart] if score @s GhostNr = #temp GhostNr run tag @s add this_ghost
scoreboard players reset #temp GhostNr
execute at @e[tag=this_ghost,tag=!body,limit=1] run teleport @s ~ ~ ~ ~ ~
execute at @e[tag=this_ghost,tag=body,limit=1] run teleport @s ~ ~ ~ ~ ~
scoreboard players set #temp Time 0
scoreboard players operation #temp Time = @e[tag=this_ghost,tag=!body,limit=1] HeartOffset
execute unless score #temp Time matches 0 at @s run function luigis_mansion:entities/ghost_heart/move
execute at @s[tag=burning] run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0 1
execute at @s[tag=watery] run particle minecraft:rain ~ ~1 ~ 0.2 0.2 0.2 0 1
execute at @s[tag=frozen] run particle minecraft:firework ~ ~1 ~ 0.2 0.2 0.2 0 1
execute unless entity @e[tag=this_ghost,tag=!body,limit=1] run tag @s add dead
execute at @s[tag=!burning,tag=!watery,tag=!frozen,scores={Sound=0}] run playsound luigis_mansion:entity.heart.beat hostile @a[tag=same_room] ~ ~ ~1
scoreboard players set @s[tag=!burning,tag=!watery,tag=!frozen,scores={Sound=0}] Sound 10
tag @e[tag=this_ghost] remove this_ghost
scoreboard players reset #temp Time