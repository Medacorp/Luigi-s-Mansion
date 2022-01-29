execute unless score #cellar Ticking matches 1 run function #luigis_mansion:room/normal/cellar/load
execute as @a[gamemode=!spectator,x=734,y=1,z=-63,dx=14,dy=8,dz=21] unless entity @s[scores={Room=58}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=734,y=1,z=-63,dx=14,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 58
scoreboard players set #temp Room 58

execute as @a[gamemode=!spectator,scores={Room=58}] run function luigis_mansion:room/normal/cellar/tick_per_player

function #luigis_mansion:room/normal/cellar/interactions/room

function luigis_mansion:room/normal/cellar/ghosts

function luigis_mansion:room/normal/door/hallway_7_cellar
function luigis_mansion:room/normal/door/cellar_hallway_20