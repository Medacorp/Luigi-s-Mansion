execute unless score #hallway_3 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_3/load
execute as @a[gamemode=!spectator,x=713,y=10,z=-10,dx=7,dy=8,dz=60] unless entity @s[scores={Room=11}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=713,y=10,z=-10,dx=7,dy=8,dz=60] unless entity @s[type=!minecraft:player,scores={Room=-2147483648..}] run scoreboard players set @s Room 11
tag @e[tag=ghost,scores={Room=11}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=11}] run function luigis_mansion:room/normal/hallway_3/tick_per_player

function #luigis_mansion:room/hidden/hallway_3/interactions/room

function luigis_mansion:room/hidden/hallway_3/ghosts

function luigis_mansion:room/hidden/door/foyer_hallway_3
function luigis_mansion:room/hidden/door/hallway_3_hallway_7
function luigis_mansion:room/hidden/door/hallway_3_fortune_tellers_room
function luigis_mansion:room/hidden/door/hallway_3_laundry_room