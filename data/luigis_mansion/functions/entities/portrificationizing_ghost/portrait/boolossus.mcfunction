execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus.rank
execute if score #temp ActionTime matches -1..0 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:66}}
execute if score #temp ActionTime matches 1 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:67}}
execute if score #temp ActionTime matches 2 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:68}}
execute if score #temp ActionTime matches -1..0 run advancement grant @a until luigis_mansion:portrait_ghosts/boolossus/bronze
execute if score #temp ActionTime matches 1 run advancement grant @a until luigis_mansion:portrait_ghosts/boolossus/silver
execute if score #temp ActionTime matches 2 run advancement grant @a until luigis_mansion:portrait_ghosts/boolossus/gold
scoreboard players reset #temp ActionTime
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus.portrificationized set value 1b