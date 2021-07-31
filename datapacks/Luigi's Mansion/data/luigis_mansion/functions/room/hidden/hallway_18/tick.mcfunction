execute unless score #hallway_18 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_18/load
execute as @a[gamemode=!spectator,x=723,y=28,z=-33,dx=16,dy=8,dz=8] unless entity @s[scores={Room=54}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=723,y=28,z=-33,dx=16,dy=8,dz=8] run scoreboard players set @s Room 54
tag @e[tag=ghost,scores={Room=54}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=54}] run function luigis_mansion:room/normal/hallway_18/tick_per_player

function #luigis_mansion:room/hidden/hallway_18/interactions/room

function luigis_mansion:room/hidden/hallway_18/ghosts

function luigis_mansion:room/hidden/door/balcony_2_hallway_18