execute unless score #attic_hallway_1 Ticking matches 1 run function #luigis_mansion:room/normal/attic_hallway_1/load
execute as @a[gamemode=!spectator,x=724,y=28,z=-17,dx=40,dy=8,dz=8] unless entity @s[scores={Room=41}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=724,y=28,z=-17,dx=40,dy=8,dz=8] run scoreboard players set @s Room 41
tag @e[tag=ghost,scores={Room=41}] add no_hidden_move

execute as @a[gamemode=!spectator,x=724,y=28,z=-17,dx=40,dy=8,dz=8] run function luigis_mansion:room/normal/attic_hallway_1/tick_per_player

function #luigis_mansion:room/normal/attic_hallway_1/interactions/room

function luigis_mansion:room/normal/attic_hallway_1/ghosts

function luigis_mansion:room/normal/door/safari_room_attic_hallway_1
function luigis_mansion:room/normal/door/attic_hallway_1_balcony_2
function luigis_mansion:room/normal/door/attic_hallway_1_artists_studio