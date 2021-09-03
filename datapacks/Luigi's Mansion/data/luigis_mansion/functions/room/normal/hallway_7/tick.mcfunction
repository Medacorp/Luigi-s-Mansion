execute unless score #hallway_7 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_7/load
execute as @a[gamemode=!spectator,x=712,y=1,z=-63,dx=8,dy=17,dz=21] unless entity @s[scores={Room=15}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=712,y=1,z=-63,dx=8,dy=17,dz=21] unless entity @s[type=!minecraft:player,scores={Room=-2147483648..}] run scoreboard players set @s Room 15
tag @e[tag=ghost,scores={Room=15}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=15}] run function luigis_mansion:room/normal/hallway_7/tick_per_player

function #luigis_mansion:room/normal/hallway_7/interactions/room

function luigis_mansion:room/normal/hallway_7/ghosts

function luigis_mansion:room/normal/door/hallway_3_hallway_7
function luigis_mansion:room/normal/door/hallway_7_breaker_room
function luigis_mansion:room/normal/door/hallway_7_cellar