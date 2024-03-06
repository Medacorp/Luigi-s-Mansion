execute at @s facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s SpawnTime 0
tag @s remove hidden
tag @s remove can_spawn
tag @s remove try_spawn
tag @s remove new_ghost
tag @s remove hiding_in_furniture
tag @s add visible
tag @s add appear