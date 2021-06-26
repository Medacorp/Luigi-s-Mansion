execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.sue_pea.rank
execute if score #temp ActionTime matches -1..0 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:27}}
execute if score #temp ActionTime matches 1 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:28}}
execute if score #temp ActionTime matches 2 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:29}}
execute if score #temp ActionTime matches -1..0 run advancement grant @a until luigis_mansion:portrait_ghosts/sue_pea/bronze
execute if score #temp ActionTime matches 1 run advancement grant @a until luigis_mansion:portrait_ghosts/sue_pea/silver
execute if score #temp ActionTime matches 2 run advancement grant @a until luigis_mansion:portrait_ghosts/sue_pea/gold
scoreboard players reset #temp ActionTime
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.sue_pea.portrificationized set value 1b