execute store result score #temp3 Money run data get storage 3ds_remake:data currently_checked[-1].peaceful.speed
execute unless score #temp3 Money matches -1 run scoreboard players operation #temp2 Money < #temp3 Money
execute store result score #temp3 Money run data get storage 3ds_remake:data currently_checked[-1].easy.speed
execute unless score #temp3 Money matches -1 run scoreboard players operation #temp2 Money < #temp3 Money
execute store result score #temp3 Money run data get storage 3ds_remake:data currently_checked[-1].normal.speed
execute unless score #temp3 Money matches -1 run scoreboard players operation #temp2 Money < #temp3 Money
execute store result score #temp3 Money run data get storage 3ds_remake:data currently_checked[-1].hard.speed
execute unless score #temp3 Money matches -1 run scoreboard players operation #temp2 Money < #temp3 Money
data remove storage 3ds_remake:data currently_checked[-1]
execute if data storage 3ds_remake:data currently_checked[-1] run function 3ds_remake:room/gallery/interact_with_trophy/get_portrait_count/time