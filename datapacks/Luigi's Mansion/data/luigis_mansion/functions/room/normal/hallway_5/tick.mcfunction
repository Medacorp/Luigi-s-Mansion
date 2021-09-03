execute unless score #hallway_5 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_5/load
execute as @a[gamemode=!spectator,x=679,y=10,z=-30,dx=6,dy=8,dz=42] unless entity @s[scores={Room=13}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=679,y=10,z=-30,dx=6,dy=8,dz=42] unless entity @s[type=!minecraft:player,scores={Room=-2147483648..}] run scoreboard players set @s Room 13
tag @e[tag=ghost,scores={Room=13}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=13}] run function luigis_mansion:room/normal/hallway_5/tick_per_player

function #luigis_mansion:room/normal/hallway_5/interactions/room

function luigis_mansion:room/normal/hallway_5/ghosts

function luigis_mansion:room/normal/door/hallway_5_washroom_1
function luigis_mansion:room/normal/door/hallway_5_conservatory
function luigis_mansion:room/normal/door/hallway_5_hallway_8
function luigis_mansion:room/normal/door/hallway_5_billiards_room