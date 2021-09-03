execute unless score #hallway_6 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_6/load
execute as @a[gamemode=!spectator,x=667,y=10,z=3,dx=11,dy=8,dz=8] unless entity @s[scores={Room=14}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=667,y=10,z=3,dx=11,dy=8,dz=8] unless entity @s[type=!minecraft:player,scores={Room=-2147483648..}] run scoreboard players set @s Room 14
tag @e[tag=ghost,scores={Room=14}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=14}] run function luigis_mansion:room/normal/hallway_6/tick_per_player

function #luigis_mansion:room/hidden/hallway_6/interactions/room

function luigis_mansion:room/hidden/hallway_6/ghosts

function luigis_mansion:room/hidden/door/hallway_6_bathroom_1
function luigis_mansion:room/hidden/door/hallway_6_courtyard