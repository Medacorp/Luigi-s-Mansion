execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.neville.rank
execute store result score #temp Time run data get storage luigis_mansion:data current_state.portrait_ghost_ranks.neville
execute if score #temp ActionTime matches -1..0 if score #global_3ds_remake_gallery Selected matches 1 unless entity @a[tag=portrait_battle,limit=1] run data modify entity @s ArmorItems[3] merge value {id:"painting",Count:1b,tag:{CustomModelData:87}}
execute if score #temp ActionTime matches 1 if score #global_3ds_remake_gallery Selected matches 1 unless entity @a[tag=portrait_battle,limit=1] run data modify entity @s ArmorItems[3] merge value {id:"painting",Count:1b,tag:{CustomModelData:88}}
execute if score #temp ActionTime matches 2 if score #global_3ds_remake_gallery Selected matches 1 unless entity @a[tag=portrait_battle,limit=1] run data modify entity @s ArmorItems[3] merge value {id:"painting",Count:1b,tag:{CustomModelData:89}}
execute if score #temp ActionTime matches 3 if score #global_3ds_remake_gallery Selected matches 1 unless entity @a[tag=portrait_battle,limit=1] run data modify entity @s ArmorItems[3] merge value {id:"painting",Count:1b,tag:{CustomModelData:90}}
execute if score #temp ActionTime matches -1..0 if score #global_3ds_remake_gallery Selected matches 0 unless entity @a[tag=portrait_battle,limit=1] run data modify entity @s ArmorItems[3] merge value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:6}}
execute if score #temp ActionTime matches 1 if score #global_3ds_remake_gallery Selected matches 0 unless entity @a[tag=portrait_battle,limit=1] run data modify entity @s ArmorItems[3] merge value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:7}}
execute if score #temp ActionTime matches 2..3 if score #global_3ds_remake_gallery Selected matches 0 unless entity @a[tag=portrait_battle,limit=1] run data modify entity @s ArmorItems[3] merge value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:8}}
execute if score #temp ActionTime matches -1..0 unless score #temp Time matches 1.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.neville set value 0b
execute if score #temp ActionTime matches 1 unless score #temp Time matches 2.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.neville set value 1b
execute if score #temp ActionTime matches 2 unless score #temp Time matches 3.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.neville set value 2b
execute if score #temp ActionTime matches 3 unless score #temp Time matches 4.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.neville set value 3b
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Time
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.neville.portrificationized set value 1b