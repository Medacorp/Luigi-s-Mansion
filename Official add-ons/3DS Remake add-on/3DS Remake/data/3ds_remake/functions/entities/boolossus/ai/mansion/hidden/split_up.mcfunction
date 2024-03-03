scoreboard players set #temp ActionTime 360
scoreboard players operation #temp ActionTime /= @s Health
scoreboard players set #temp HomeRotation -180
playsound luigis_mansion:entity.boolossus.pop hostile @a[tag=same_room] ~ ~ ~ 3
function 3ds_remake:entities/boolossus/ai/mansion/hidden/split_boo
tag @s add remove_from_existence
scoreboard players reset #temp ActionTime
scoreboard players reset #temp HomeRotation
scoreboard players reset #temp Boos
scoreboard players reset #temp2 Boos
scoreboard players reset #temp Room