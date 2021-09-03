execute unless score #butlers_room Ticking matches 1 run function #luigis_mansion:room/normal/butlers_room/load
execute as @a[gamemode=!spectator,x=737,y=10,z=53,dx=14,dy=8,dz=20] unless entity @s[scores={Room=23}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=737,y=10,z=53,dx=14,dy=8,dz=20] unless entity @s[type=!minecraft:player,scores={Room=-2147483648..}] run scoreboard players set @s Room 23

execute as @a[gamemode=!spectator,scores={Room=23}] run function luigis_mansion:room/normal/butlers_room/tick_per_player

function #luigis_mansion:room/normal/butlers_room/interactions/room

function luigis_mansion:room/normal/butlers_room/ghosts

function luigis_mansion:room/normal/door/laundry_room_butlers_room