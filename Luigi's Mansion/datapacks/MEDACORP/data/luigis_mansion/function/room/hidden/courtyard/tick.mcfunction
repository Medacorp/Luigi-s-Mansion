execute unless score #courtyard Ticking matches 1 run function #luigis_mansion:room/hidden/courtyard/load
execute as @e[tag=player,x=644,y=101,z=-22,dx=10,dy=7,dz=78] unless entity @s[scores={Room=30}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=644,y=101,z=-22,dx=10,dy=7,dz=78] Room 30
#todelete - old furniture
scoreboard players set #temp Room 30
#/todelete

execute as @a[scores={Room=30}] run function luigis_mansion:room/hidden/courtyard/tick_per_player

execute if entity @e[tag=toad,scores={Room=30},tag=talk_this_tick] unless data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{toad_4_happy:1b} unless data storage luigis_mansion:data dialogs[{room:30}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_4_look"},room:30,progress:0}
execute if entity @e[tag=toad,scores={Room=30},tag=talk_this_tick] if data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{toad_4_happy:1b} unless data storage luigis_mansion:data dialogs[{room:30}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_4"},room:30,progress:0}
execute if entity @e[tag=toad,scores={Room=30},tag=talk_this_tick] if data storage luigis_mansion:data current_state.current_data.technical_data{toad_4_happy:1b} unless data storage luigis_mansion:data dialogs[{room:30}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_4_repeat"},room:30,progress:0}

#todelete - old furniture
function #luigis_mansion:room/hidden/courtyard/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=30},limit=1] run function luigis_mansion:room/hidden/courtyard/ghosts