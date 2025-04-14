execute if data storage 3ds_remake:data currently_checked[-1].hard store result score #temp2 Money run data get storage 3ds_remake:data currently_checked[-1].hard.speed
execute if data storage 3ds_remake:data currently_checked[-1].hard unless score #temp2 Money matches -1 run scoreboard players add #temp Time 1
data remove storage 3ds_remake:data currently_checked[-1]
execute if data storage 3ds_remake:data currently_checked[-1].hard unless score #temp2 Money matches -1 run data remove storage 3ds_remake:data currently_checked
execute if data storage 3ds_remake:data currently_checked[-1] run function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait/hard