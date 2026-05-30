execute at @s facing entity @e[tag=same_room,tag=luigi,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s SpawnTime 0
tag @s remove hidden
tag @s remove can_spawn
tag @s remove try_spawn
tag @s remove new_ghost
execute at @s[tag=hiding_in_furniture,tag=ceiling_ghost] run teleport @s ~ ~3 ~
execute if entity @s[tag=hiding_in_furniture] store result score @s HomeX run data get entity @s Pos[0] 100
execute if entity @s[tag=hiding_in_furniture] store result score @s HomeY run data get entity @s Pos[1] 100
execute if entity @s[tag=hiding_in_furniture] store result score @s HomeZ run data get entity @s Pos[2] 100
tag @s remove hiding_in_furniture
tag @s add visible
tag @s add appear