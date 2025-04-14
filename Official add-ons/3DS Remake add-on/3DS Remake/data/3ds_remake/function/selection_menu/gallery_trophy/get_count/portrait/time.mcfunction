execute if data storage 3ds_remake:data currently_checked[-1].peaceful store result score #temp3 Money run data get storage 3ds_remake:data currently_checked[-1].peaceful.speed
execute if data storage 3ds_remake:data currently_checked[-1].peaceful unless score #temp3 Money matches -1 run scoreboard players operation #temp2 Money < #temp3 Money
execute if data storage 3ds_remake:data currently_checked[-1].easy store result score #temp3 Money run data get storage 3ds_remake:data currently_checked[-1].easy.speed
execute if data storage 3ds_remake:data currently_checked[-1].easy unless score #temp3 Money matches -1 run scoreboard players operation #temp2 Money < #temp3 Money
execute if data storage 3ds_remake:data currently_checked[-1].normal store result score #temp3 Money run data get storage 3ds_remake:data currently_checked[-1].normal.speed
execute if data storage 3ds_remake:data currently_checked[-1].normal unless score #temp3 Money matches -1 run scoreboard players operation #temp2 Money < #temp3 Money
execute if data storage 3ds_remake:data currently_checked[-1].hard store result score #temp3 Money run data get storage 3ds_remake:data currently_checked[-1].hard.speed
execute if data storage 3ds_remake:data currently_checked[-1].hard unless score #temp3 Money matches -1 run scoreboard players operation #temp2 Money < #temp3 Money
data remove storage 3ds_remake:data currently_checked[-1]
execute if data storage 3ds_remake:data currently_checked[-1] run function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait/time