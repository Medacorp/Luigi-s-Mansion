execute unless score #cold_storage Ticking matches 1 run function #luigis_mansion:room/hidden/cold_storage/load
execute as @a[gamemode=!spectator,x=721,y=1,z=3,dx=21,dy=8,dz=18] unless entity @s[scores={Room=68}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=721,y=1,z=3,dx=21,dy=8,dz=18] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 68
scoreboard players set #temp Room 68

execute as @a[gamemode=!spectator,scores={Room=68}] run function luigis_mansion:room/hidden/cold_storage/tick_per_player

function #luigis_mansion:room/hidden/cold_storage/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=68},limit=1] run function luigis_mansion:room/hidden/cold_storage/ghosts

function luigis_mansion:room/hidden/door/hallway_20_cold_storage