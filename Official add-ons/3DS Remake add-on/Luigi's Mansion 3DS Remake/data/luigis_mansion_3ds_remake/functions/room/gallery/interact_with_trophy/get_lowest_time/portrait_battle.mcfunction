execute store result score #temp3 Money run data get storage luigis_mansion_3ds_remake:data currently_checked[-1].speed
execute unless score #temp3 Money matches -1 run scoreboard players operation #temp2 Money < #temp3 Money
data remove storage luigis_mansion_3ds_remake:data currently_checked[-1]
execute if data storage luigis_mansion_3ds_remake:data currently_checked[-1] run function luigis_mansion_3ds_remake:room/gallery/interact_with_trophy/get_lowest_time/portrait_battle