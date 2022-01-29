execute unless score #washroom_2 Ticking matches 1 run function #luigis_mansion:room/hidden/washroom_2/load
execute as @a[gamemode=!spectator,x=660,y=19,z=-33,dx=8,dy=8,dz=14] unless entity @s[scores={Room=42}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=660,y=19,z=-33,dx=8,dy=8,dz=14] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 42
scoreboard players set #temp Room 42

execute as @e[scores={Room=42},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 661

execute as @a[gamemode=!spectator,scores={Room=42}] run function luigis_mansion:room/hidden/washroom_2/tick_per_player

function #luigis_mansion:room/hidden/washroom_2/interactions/room

clone 664 21 -29 664 21 -29 658 21 -29

function luigis_mansion:room/hidden/washroom_2/ghosts

function luigis_mansion:room/hidden/door/hallway_9_washroom_2