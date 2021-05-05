execute unless score #basement_stairs Ticking matches 1 run function #luigis_mansion:room/hidden/basement_stairs/load
execute as @a[gamemode=!spectator,x=712,y=1,z=57,dx=8,dy=17,dz=21] unless entity @s[scores={Room=11}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=712,y=1,z=57,dx=8,dy=17,dz=21] run scoreboard players set @s Room 11
tag @e[tag=ghost,scores={Room=11}] add no_hidden_move

execute as @a[gamemode=!spectator,x=712,y=1,z=57,dx=8,dy=17,dz=21] run function luigis_mansion:room/hidden/basement_stairs/tick_per_player

function #luigis_mansion:room/hidden/basement_stairs/interactions/room

function luigis_mansion:room/hidden/basement_stairs/ghosts

function luigis_mansion:room/hidden/door/main_hallway_basement_stairs
function luigis_mansion:room/hidden/door/basement_stairs_breaker_room
function luigis_mansion:room/hidden/door/basement_stairs_cellar