execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.sir_weston.rank
execute store result score #temp Time run data get storage luigis_mansion:data current_state.portrait_ghost_ranks.sir_weston
execute if score #temp ActionTime matches -1..0 run data modify entity @s equipment.head merge value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/gallery_portrait/sir_weston","minecraft:unbreakable":{},"minecraft:custom_model_data":{strings:["bronze"]}}}
execute if score #temp ActionTime matches 1 run data modify entity @s equipment.head merge value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/gallery_portrait/sir_weston","minecraft:unbreakable":{},"minecraft:custom_model_data":{strings:["silver"]}}}
execute if score #temp ActionTime matches 2.. run data modify entity @s equipment.head merge value {id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/gallery_portrait/sir_weston","minecraft:unbreakable":{},"minecraft:custom_model_data":{strings:["gold"]}}}
execute if score #temp ActionTime matches -1..0 unless score #temp Time matches 1.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.sir_weston set value 0b
execute if score #temp ActionTime matches 1 unless score #temp Time matches 2.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.sir_weston set value 1b
execute if score #temp ActionTime matches 2.. unless score #temp Time matches 3.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.sir_weston set value 2b
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Time
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.sir_weston.portrificationized set value 1b