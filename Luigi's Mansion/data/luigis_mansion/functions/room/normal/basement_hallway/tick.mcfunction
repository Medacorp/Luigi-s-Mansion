execute unless score #basement_hallway Ticking matches 1 run function #luigis_mansion:room/normal/basement_hallway/load
execute as @a[x=685,y=93,z=-22,dx=36,dy=6,dz=8] unless entity @s[scores={Room=47}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=685,y=93,z=-22,dx=36,dy=6,dz=8] run scoreboard players set @s Room 47
tag @e[tag=ghost,scores={Room=47}] add hallway

execute as @a[gamemode=!spectator,x=687,y=93,z=-20,dx=32,dy=6,dz=4] run function luigis_mansion:room/normal/basement_hallway/tick_per_player

function #luigis_mansion:room/normal/basement_hallway/interactions/room

function luigis_mansion:room/normal/basement_hallway/ghosts

function luigis_mansion:room/normal/door/cellar_basement_hallway
function luigis_mansion:room/normal/door/basement_hallway_pipe_room
function luigis_mansion:room/normal/door/basement_hallway_cold_storage
function luigis_mansion:room/normal/door/basement_hallway_curved_hallway