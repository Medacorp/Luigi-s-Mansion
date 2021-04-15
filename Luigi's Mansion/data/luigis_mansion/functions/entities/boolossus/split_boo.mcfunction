execute store result entity @e[tag=boolossus,tag=battle,limit=1] Rotation[0] float 1 run scoreboard players get #temp HomeRot
execute at @s rotated ~ 0 run function luigis_mansion:spawn_entities/portrait_ghost/boolossus/boo
scoreboard players operation #temp HomeRot += #temp ActionTime
scoreboard players remove #temp Boos 1
execute if score #temp Boos matches 1.. run function luigis_mansion:entities/boolossus/split_boo