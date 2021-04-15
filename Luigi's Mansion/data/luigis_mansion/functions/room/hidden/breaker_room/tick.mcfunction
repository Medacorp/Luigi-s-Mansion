execute unless score #breaker_room Ticking matches 1 run function #luigis_mansion:room/hidden/breaker_room/load
execute as @a[x=685,y=93,z=36,dx=14,dy=6,dz=21] unless entity @s[scores={Room=45}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=685,y=93,z=36,dx=14,dy=6,dz=21] run scoreboard players set @s Room 45

execute as @a[gamemode=!spectator,x=687,y=93,z=38,dx=10,dy=6,dz=17] run function luigis_mansion:room/hidden/breaker_room/tick_per_player

function #luigis_mansion:room/hidden/breaker_room/interactions/room

function luigis_mansion:room/hidden/breaker_room/ghosts

function luigis_mansion:room/hidden/door/basement_stairs_breaker_room