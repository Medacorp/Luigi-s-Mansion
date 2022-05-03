execute unless score #butlers_room Ticking matches 1 run function #luigis_mansion:room/normal/butlers_room/load
execute as @a[gamemode=!spectator,x=737,y=10,z=53,dx=14,dy=8,dz=20] unless entity @s[scores={Room=23}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=737,y=10,z=53,dx=14,dy=8,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 23
scoreboard players set #temp Room 23

execute as @a[gamemode=!spectator,scores={Room=23}] run function luigis_mansion:room/normal/butlers_room/tick_per_player

function #luigis_mansion:room/normal/butlers_room/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=23},limit=1] run function luigis_mansion:room/normal/butlers_room/ghosts