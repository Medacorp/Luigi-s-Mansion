$execute unless data storage luigis_mansion:data dialogs[{room:-3}] run function $(namespace):room/ghost_portrificationizer_room/portrificationize/$(id)
execute if score #temp Time matches 1 unless data storage luigis_mansion:data dialogs[{room:-3}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"portrificationizing"},room:-3,progress:0,caller:0}
execute if score #temp Time matches 1 store result storage luigis_mansion:data dialogs[{room:-3}].caller int 1 run scoreboard players get @s ID
scoreboard players reset #temp Time