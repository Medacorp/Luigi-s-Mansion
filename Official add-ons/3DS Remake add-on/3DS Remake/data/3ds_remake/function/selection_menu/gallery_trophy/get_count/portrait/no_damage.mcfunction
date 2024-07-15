scoreboard players reset #temp3 Money
execute store result score #temp2 Money run data get storage 3ds_remake:data currently_checked[-1].easy.health
execute if score #temp2 Money matches 100 run scoreboard players add #temp Time 1
execute if score #temp2 Money matches 100 run scoreboard players set #temp3 Money 1
execute unless score #temp3 Money matches 1 store result score #temp2 Money run data get storage 3ds_remake:data currently_checked[-1].normal.health
execute unless score #temp3 Money matches 1 if score #temp2 Money matches 100 run scoreboard players add #temp Time 1
execute unless score #temp3 Money matches 1 if score #temp2 Money matches 100 run scoreboard players set #temp3 Money 1
execute unless score #temp3 Money matches 1 store result score #temp2 Money run data get storage 3ds_remake:data currently_checked[-1].hard.health
execute unless score #temp3 Money matches 1 if score #temp2 Money matches 100 run scoreboard players add #temp Time 1
execute unless score #temp3 Money matches 1 if score #temp2 Money matches 100 run scoreboard players set #temp3 Money 1
data remove storage 3ds_remake:data currently_checked[-1]
execute unless score #temp3 Money matches 1 if data storage 3ds_remake:data currently_checked[-1] run function 3ds_remake:selection_menu/gallery_trophy/get_count/portrait/no_damage