execute at @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["ghost_guy_target"],Duration:1}
data modify entity @e[type=minecraft:marker,tag=ghost_guy_target,limit=1] Pos[1] set from entity @s Pos[1]
execute at @e[type=minecraft:marker,tag=ghost_guy_target,limit=1] facing entity @s feet rotated ~ 0 run function luigis_mansion:entities/ghost_guy/target_step
kill @e[type=minecraft:marker,tag=ghost_guy_target,limit=1]
tag @s remove has_target
execute facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~