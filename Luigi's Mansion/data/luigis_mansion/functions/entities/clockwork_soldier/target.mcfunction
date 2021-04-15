execute at @p[gamemode=!spectator] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["clockwork_soldier_target"],Duration:1}
data modify entity @e[tag=clockwork_soldier_target,limit=1] Pos[1] set from entity @s Pos[1]
execute at @e[tag=clockwork_soldier_target,limit=1] facing entity @s feet rotated ~ 0 run function luigis_mansion:entities/clockwork_soldier/target_step
kill @e[tag=clockwork_soldier_target,limit=1]
tag @s remove has_target
execute facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~