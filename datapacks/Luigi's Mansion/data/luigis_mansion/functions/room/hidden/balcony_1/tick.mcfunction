execute unless score #balcony_1 Ticking matches 1 run function #luigis_mansion:room/hidden/balcony_1/load
execute as @a[gamemode=!spectator,x=672,y=110,z=-29,dx=10,dy=8,dz=8] unless entity @s[scores={Room=6}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=672,y=110,z=-29,dx=10,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 6
scoreboard players set #temp Room 6

execute as @a[gamemode=!spectator,scores={Room=6}] run function luigis_mansion:room/hidden/balcony_1/tick_per_player

function #luigis_mansion:room/hidden/balcony_1/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=6},limit=1] run function luigis_mansion:room/hidden/balcony_1/ghosts