scoreboard players operation #temp Room = @s Room
scoreboard players set #temp ActionTime 360
scoreboard players operation #temp ActionTime /= @s ActionTime
scoreboard players operation #temp Boos = @s ActionTime
scoreboard players set #temp HomeRot -180
playsound luigis_mansion:entity.boolossus.pop hostile @a[tag=same_room] ~ ~ ~ 3
function luigis_mansion:entities/boolossus/split_boo
tag @s add dead
scoreboard players reset #temp ActionTime
scoreboard players reset #temp HomeRot
scoreboard players reset #temp Boos
scoreboard players reset #temp Room