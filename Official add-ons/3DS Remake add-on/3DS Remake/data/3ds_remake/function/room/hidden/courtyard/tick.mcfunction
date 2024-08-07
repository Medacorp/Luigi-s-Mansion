execute unless score #courtyard Ticking matches 1 run function #3ds_remake:room/hidden/courtyard/load
execute as @a[x=644,y=101,z=-41,dx=10,dy=7,dz=78] unless entity @s[scores={Room=30}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=644,y=101,z=-41,dx=10,dy=7,dz=78] Room 30
#todelete - old furniture
scoreboard players set #temp Room 30
#/todelete

execute as @a[scores={Room=30}] run function 3ds_remake:room/hidden/courtyard/tick_per_player

execute if entity @e[tag=toad,scores={Room=30},tag=talk] unless data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{toad_4_happy:1b} unless data storage luigis_mansion:data dialogs[{room:30}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_4_look"},room:30,progress:0}
execute if entity @e[tag=toad,scores={Room=30},tag=talk] if data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{toad_4_happy:1b} unless data storage luigis_mansion:data dialogs[{room:30}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_4"},room:30,progress:0}
execute if entity @e[tag=toad,scores={Room=30},tag=talk] if data storage luigis_mansion:data current_state.current_data.technical_data{toad_4_happy:1b} unless data storage luigis_mansion:data dialogs[{room:30}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_4_repeat"},room:30,progress:0}

function #3ds_remake:room/hidden/courtyard/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=30},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/courtyard/ghosts