execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.bogmire.rank
execute store result score #temp Time run data get storage luigis_mansion:data current_state.portrait_ghost_ranks.bogmire
execute if score #temp ActionTime matches -1..0 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:60}}
execute if score #temp ActionTime matches 1 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:61}}
execute if score #temp ActionTime matches 2 run data modify entity @s ArmorItems[3] set value {id:"minecraft:painting",Count:1b,tag:{CustomModelData:62}}
execute if score #temp ActionTime matches -1..0 unless score #temp Time matches 1.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.bogmire set value 0b
execute if score #temp ActionTime matches 1 unless score #temp Time matches 2.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.bogmire set value 1b
execute if score #temp ActionTime matches 2 unless score #temp Time matches 3.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.bogmire set value 2b
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Time
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.bogmire.portrificationized set value 1b