execute at @p[gamemode=!spectator] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ghost_guy_target"],Duration:1}
data modify entity @e[tag=ghost_guy_target,limit=1] Pos[1] set from entity @s Pos[1]
execute at @e[tag=ghost_guy_target,limit=1] facing entity @s feet rotated ~ 0 run function luigis_mansion:entities/ghost_guy/target_step
kill @e[tag=ghost_guy_target,limit=1]
tag @s remove has_target
execute facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~