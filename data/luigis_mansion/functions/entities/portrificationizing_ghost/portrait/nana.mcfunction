execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.nana.rank
execute if score #temp ActionTime matches -1..0 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:9}}
execute if score #temp ActionTime matches 1 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:10}}
execute if score #temp ActionTime matches 2 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:11}}
execute if score #temp ActionTime matches -1..0 run advancement grant @a until luigis_mansion:portrait_ghosts/nana/bronze
execute if score #temp ActionTime matches 1 run advancement grant @a until luigis_mansion:portrait_ghosts/nana/silver
execute if score #temp ActionTime matches 2 run advancement grant @a until luigis_mansion:portrait_ghosts/nana/gold
scoreboard players reset #temp ActionTime
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.nana.portrificationized set value 1b