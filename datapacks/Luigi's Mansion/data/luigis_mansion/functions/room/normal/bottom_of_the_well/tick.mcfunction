execute unless score #bottom_of_the_well Ticking matches 1 run function #luigis_mansion:room/normal/bottom_of_the_well/load
execute as @a[gamemode=!spectator,x=645,y=92,z=-9,dx=6,dy=6,dz=10] unless entity @s[scores={Room=31}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=645,y=92,z=-9,dx=6,dy=6,dz=10] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 31
tag @e[tag=ghost,scores={Room=31}] add no_hidden_move

execute as @e[scores={Room=31},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorZ -26

execute as @a[gamemode=!spectator,scores={Room=31}] run function luigis_mansion:room/normal/bottom_of_the_well/tick_per_player

function #luigis_mansion:room/normal/bottom_of_the_well/interactions/room

function luigis_mansion:room/normal/bottom_of_the_well/ghosts

execute as @a[gamemode=!spectator,x=648.5,y=93,z=-9.5,distance=..0.7] unless data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario:1b} unless entity @a[tag=marios_painting] run tag @s add marios_painting
execute as @a[gamemode=!spectator,x=648.5,y=93,z=-9.5,distance=..0.7] if data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{saw_mario_again:1b} unless entity @a[tag=marios_painting_repeat] run tag @s add marios_painting_repeat