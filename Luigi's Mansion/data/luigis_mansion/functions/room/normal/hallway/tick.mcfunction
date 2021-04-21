execute unless score #hallway Ticking matches 1 run function #luigis_mansion:room/normal/hallway/load
execute as @a[gamemode=!spectator,x=667,y=19,z=-55,dx=53,dy=17,dz=67] unless entity @s[scores={Room=31}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=667,y=19,z=-55,dx=53,dy=17,dz=67] run scoreboard players set @s Room 31
tag @e[tag=ghost,scores={Room=31}] add hallway

execute as @a[gamemode=!spectator,x=667,y=19,z=-55,dx=53,dy=17,dz=67] run function luigis_mansion:room/normal/hallway/tick_per_player

function #luigis_mansion:room/normal/hallway/interactions/room

function luigis_mansion:room/normal/hallway/ghosts

function luigis_mansion:room/normal/door/main_stairs_hallway
function luigis_mansion:room/normal/door/hallway_washroom_2
function luigis_mansion:room/normal/door/hallway_bathroom_2
function luigis_mansion:room/normal/door/hallway_nanas_room
function luigis_mansion:room/normal/door/hallway_astral_hall
function luigis_mansion:room/normal/door/hallway_safari_room
function luigis_mansion:room/normal/door/hallway_sealed_room
function luigis_mansion:room/normal/door/hallway_sitting_room