execute unless score #balcony_1 Ticking matches 1 run function #luigis_mansion:room/normal/balcony_1/load
execute as @a[x=672,y=108,z=37,dx=10,dy=9,dz=8] unless entity @s[x=672,y=99,z=37,dx=10,dy=9,dz=8] unless entity @s[scores={Room=6}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=672,y=108,z=37,dx=10,dy=9,dz=8] unless entity @s[x=672,y=99,z=37,dx=10,dy=9,dz=8] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 6

execute as @a[scores={Room=6}] run function luigis_mansion:room/normal/balcony_1/tick_per_player

execute if entity @e[tag=toad,scores={Room=6},tag=talk] if data storage luigis_mansion:data current_state.current_data.rooms.balcony_1{cleared:0b} unless data storage luigis_mansion:data dialogs[{room:6}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_2"},room:6,progress:0}
execute if entity @e[tag=toad,scores={Room=6},tag=talk] if data storage luigis_mansion:data current_state.current_data.rooms.balcony_1{cleared:1b} unless data storage luigis_mansion:data dialogs[{room:6}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"toad_2_repeat"},room:6,progress:0}

function #luigis_mansion:room/normal/balcony_1/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=6},limit=1] run function luigis_mansion:room/normal/balcony_1/ghosts