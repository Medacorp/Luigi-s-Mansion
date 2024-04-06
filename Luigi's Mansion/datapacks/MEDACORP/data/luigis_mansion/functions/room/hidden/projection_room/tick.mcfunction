execute unless score #projection_room Ticking matches 1 run function #luigis_mansion:room/hidden/projection_room/load
execute as @a[x=673,y=10,z=-31,dx=15,dy=7,dz=16] unless entity @s[scores={Room=48}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=673,y=10,z=-31,dx=15,dy=7,dz=16] Room 48

execute as @a[scores={Room=48}] run function luigis_mansion:room/hidden/projection_room/tick_per_player

function #luigis_mansion:room/hidden/projection_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=48},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/projection_room/ghosts