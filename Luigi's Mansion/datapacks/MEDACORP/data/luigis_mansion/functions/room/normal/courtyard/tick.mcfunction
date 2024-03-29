execute unless score #courtyard Ticking matches 1 run function #luigis_mansion:room/normal/courtyard/load
execute as @a[x=644,y=99,z=-41,dx=10,dy=9,dz=78] unless entity @s[scores={Room=30}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=644,y=99,z=-41,dx=10,dy=9,dz=78] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 30
tag @e[tag=ghost,scores={Room=30}] add no_hidden_move

execute as @a[scores={Room=30}] run function luigis_mansion:room/normal/courtyard/tick_per_player

execute if entity @e[tag=toad,scores={Room=30},tag=talk] unless data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{toad_4_happy:1b} unless data storage luigis_mansion:data dialogs[{room:30}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_4_look"},room:30,progress:0}
execute if entity @e[tag=toad,scores={Room=30},tag=talk] if data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{toad_4_happy:1b} unless data storage luigis_mansion:data dialogs[{room:30}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_4"},room:30,progress:0}
execute if entity @e[tag=toad,scores={Room=30},tag=talk] if data storage luigis_mansion:data current_state.current_data.technical_data{toad_4_happy:1b} unless data storage luigis_mansion:data dialogs[{room:30}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_4_repeat"},room:30,progress:0}

function #luigis_mansion:room/normal/courtyard/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=30},limit=1] run function luigis_mansion:room/normal/courtyard/ghosts