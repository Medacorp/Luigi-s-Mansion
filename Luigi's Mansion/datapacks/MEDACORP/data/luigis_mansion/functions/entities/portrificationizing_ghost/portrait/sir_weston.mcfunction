execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.sir_weston.rank
execute store result score #temp Time run data get storage luigis_mansion:data current_state.portrait_ghost_ranks.sir_weston
execute if score #temp ActionTime matches -1..0 run data modify entity @s ArmorItems[3] merge value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:256}}
execute if score #temp ActionTime matches 1 run data modify entity @s ArmorItems[3] merge value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:257}}
execute if score #temp ActionTime matches 2 run data modify entity @s ArmorItems[3] merge value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:258}}
execute if score #temp ActionTime matches -1..0 unless score #temp Time matches 1.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.sir_weston set value 0b
execute if score #temp ActionTime matches 1 unless score #temp Time matches 2.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.sir_weston set value 1b
execute if score #temp ActionTime matches 2 unless score #temp Time matches 3.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.sir_weston set value 2b
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Time
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.sir_weston.portrificationized set value 1b