execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.mr_luggs.rank
execute store result score #temp Time run data get storage luigis_mansion:data current_state.portrait_ghost_ranks.mr_luggs
execute if score #temp ActionTime matches -1..0 if score #global_3ds_remake_gallery Selected matches 1 unless entity @a[tag=portrait_battle,limit=1] run data modify entity @s ArmorItems[3] set value {id:"painting",Count:1b,tag:{CustomModelData:111}}
execute if score #temp ActionTime matches 1 if score #global_3ds_remake_gallery Selected matches 1 unless entity @a[tag=portrait_battle,limit=1] run data modify entity @s ArmorItems[3] set value {id:"painting",Count:1b,tag:{CustomModelData:112}}
execute if score #temp ActionTime matches 2 if score #global_3ds_remake_gallery Selected matches 1 unless entity @a[tag=portrait_battle,limit=1] run data modify entity @s ArmorItems[3] set value {id:"painting",Count:1b,tag:{CustomModelData:113}}
execute if score #temp ActionTime matches 3 if score #global_3ds_remake_gallery Selected matches 1 unless entity @a[tag=portrait_battle,limit=1] run data modify entity @s ArmorItems[3] set value {id:"painting",Count:1b,tag:{CustomModelData:114}}
execute if score #temp ActionTime matches -1..0 if score #global_3ds_remake_gallery Selected matches 0 unless entity @a[tag=portrait_battle,limit=1] run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:36}}
execute if score #temp ActionTime matches 1 if score #global_3ds_remake_gallery Selected matches 0 unless entity @a[tag=portrait_battle,limit=1] run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:37}}
execute if score #temp ActionTime matches 2..3 if score #global_3ds_remake_gallery Selected matches 0 unless entity @a[tag=portrait_battle,limit=1] run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:38}}
execute if score #temp ActionTime matches -1..0 unless score #temp Time matches 1.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.mr_luggs set value 0b
execute if score #temp ActionTime matches 1 unless score #temp Time matches 2.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.mr_luggs set value 1b
execute if score #temp ActionTime matches 2 unless score #temp Time matches 3.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.mr_luggs set value 2b
execute if score #temp ActionTime matches 3 unless score #temp Time matches 4.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.mr_luggs set value 3b
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Time
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.mr_luggs.portrificationized set value 1b