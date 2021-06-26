execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.slim_bankshot.rank
execute if score #temp ActionTime matches -1..0 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:51}}
execute if score #temp ActionTime matches 1 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:52}}
execute if score #temp ActionTime matches 2 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:53}}
execute if score #temp ActionTime matches -1..0 run advancement grant @a until luigis_mansion:portrait_ghosts/slim_bankshot/bronze
execute if score #temp ActionTime matches 1 run advancement grant @a until luigis_mansion:portrait_ghosts/slim_bankshot/silver
execute if score #temp ActionTime matches 2 run advancement grant @a until luigis_mansion:portrait_ghosts/slim_bankshot/gold
scoreboard players reset #temp ActionTime
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.slim_bankshot.portrificationized set value 1b