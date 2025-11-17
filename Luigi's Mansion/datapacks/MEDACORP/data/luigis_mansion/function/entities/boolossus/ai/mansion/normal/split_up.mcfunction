scoreboard players set #temp ActionTime 360
scoreboard players operation #temp ActionTime /= @s Health
scoreboard players set #temp HomeRotation -180
scoreboard players set #temp3 Boos 3
execute if predicate luigis_mansion:boolossus/extra_agressive_chance run scoreboard players add #temp3 Boos 1
execute if predicate luigis_mansion:boolossus/extra_agressive_chance run scoreboard players add #temp3 Boos 1
playsound luigis_mansion:entity.boolossus.pop hostile @a[tag=same_room] ~ ~ ~ 3
function luigis_mansion:entities/boolossus/ai/mansion/normal/split_boo
tag @s add remove_from_existence
scoreboard players reset #temp ActionTime
scoreboard players reset #temp HomeRotation
scoreboard players reset #temp Boos
scoreboard players reset #temp2 Boos
scoreboard players reset #temp3 Boos
scoreboard players reset #temp Room