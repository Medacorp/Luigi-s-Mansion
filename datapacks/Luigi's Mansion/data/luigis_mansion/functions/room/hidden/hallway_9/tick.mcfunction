execute unless score #hallway_9 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_9/load
execute as @a[gamemode=!spectator,x=679,y=19,z=3,dx=6,dy=8,dz=42] unless entity @s[scores={Room=35}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=679,y=19,z=3,dx=6,dy=8,dz=42] run scoreboard players set @s Room 35
tag @e[tag=ghost,scores={Room=35}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=35}] run function luigis_mansion:room/hidden/hallway_9/tick_per_player

function #luigis_mansion:room/hidden/hallway_9/interactions/room

function luigis_mansion:room/hidden/hallway_9/ghosts

function luigis_mansion:room/hidden/door/hallway_8_hallway_9
function luigis_mansion:room/hidden/door/hallway_9_washroom_2