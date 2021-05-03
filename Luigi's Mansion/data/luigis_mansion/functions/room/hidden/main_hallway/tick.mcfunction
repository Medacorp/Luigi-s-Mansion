execute unless score #main_hallway Ticking matches 1 run function #luigis_mansion:room/hidden/main_hallway/load
execute as @a[gamemode=!spectator,x=667,y=10,z=-10,dx=8,dy=8,dz=60] unless entity @s[scores={Room=10}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=667,y=10,z=-10,dx=8,dy=8,dz=60] run scoreboard players set @s Room 10
tag @e[tag=ghost,scores={Room=10}] add no_hidden_move

execute as @a[gamemode=!spectator,x=667,y=10,z=-10,dx=8,dy=8,dz=60] run function luigis_mansion:room/hidden/main_hallway/tick_per_player

function #luigis_mansion:room/hidden/main_hallway/interactions/room

function luigis_mansion:room/hidden/main_hallway/ghosts

function luigis_mansion:room/hidden/door/foyer_main_hallway
function luigis_mansion:room/hidden/door/main_hallway_basement_stairs
function luigis_mansion:room/hidden/door/main_hallway_bathroom_1
function luigis_mansion:room/hidden/door/main_hallway_ball_room
function luigis_mansion:room/hidden/door/main_hallway_washroom_1
function luigis_mansion:room/hidden/door/main_hallway_fortune_tellers_room
function luigis_mansion:room/hidden/door/main_hallway_laundry_room
function luigis_mansion:room/hidden/door/main_hallway_conservatory
function luigis_mansion:room/hidden/door/main_hallway_dining_room
function luigis_mansion:room/hidden/door/main_hallway_courtyard
function luigis_mansion:room/hidden/door/main_hallway_main_stairs
function luigis_mansion:room/hidden/door/main_hallway_billiards_room