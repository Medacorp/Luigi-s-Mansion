execute unless score #training_room Ticking matches 1 run function #luigis_mansion:room/training_room/load
execute as @a[x=782,y=73,z=-21,dx=17,dy=9,dz=25] unless entity @s[scores={Room=-2}] run scoreboard players set @s LastRoom -2
scoreboard players set @e[x=782,y=73,z=-21,dx=17,dy=9,dz=25] Room -2
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room -2
#/todelete

execute if score #training_choice Selected matches 0 unless data storage luigis_mansion:data dialogs[{room:-2}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"training_room/program"},room:-2,progress:0}
execute if score #training_choice Selected matches 1 unless data storage luigis_mansion:data dialogs[{room:-2}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"training_room/option"},room:-2,progress:0}

execute as @a[scores={Room=-2}] run function luigis_mansion:room/training_room/tick_per_player

function #luigis_mansion:room/training_room/interactions/room