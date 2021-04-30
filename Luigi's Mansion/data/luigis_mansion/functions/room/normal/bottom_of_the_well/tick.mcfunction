execute unless score #bottom_of_the_well Ticking matches 1 run function #luigis_mansion:room/normal/bottom_of_the_well/load
execute as @a[gamemode=!spectator,x=645,y=92,z=-10,dx=6,dy=7,dz=11] unless entity @s[scores={Room=27}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=645,y=92,z=-10,dx=6,dy=7,dz=11] run scoreboard players set @s Room 27
tag @e[tag=ghost,scores={Room=27}] add hallway

scoreboard players set @e[scores={Room=27},type=!minecraft:marker] MirrorZ -26

execute as @a[gamemode=!spectator,x=647,y=92,z=-8,dx=2,dy=7,dz=8] run function luigis_mansion:room/normal/bottom_of_the_well/tick_per_player

function #luigis_mansion:room/normal/bottom_of_the_well/interactions/room

function luigis_mansion:room/normal/bottom_of_the_well/ghosts

execute as @a[gamemode=!spectator,x=648.5,y=93,z=-9.5,distance=..0.7] unless data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario:1b} unless entity @a[tag=marios_painting] run tag @s add marios_painting
execute as @a[gamemode=!spectator,x=648.5,y=93,z=-9.5,distance=..0.7] if data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario_again:1b} unless entity @a[tag=marios_painting_repeat] run tag @s add marios_painting_repeat