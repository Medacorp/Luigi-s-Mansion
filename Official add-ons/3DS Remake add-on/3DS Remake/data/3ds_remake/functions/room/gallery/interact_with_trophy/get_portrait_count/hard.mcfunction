execute store result score #temp2 Money run data get storage 3ds_remake:data currently_checked[-1].hard.speed
execute unless score #temp2 Money matches -1 run scoreboard players add #temp Time 1
execute unless score #temp2 Money matches -1 run data remove storage 3ds_remake:data currently_checked
execute if score #temp2 Money matches -1 run data remove storage 3ds_remake:data currently_checked[-1]
execute if data storage 3ds_remake:data currently_checked[-1] run function 3ds_remake:room/gallery/interact_with_trophy/get_portrait_count/hard