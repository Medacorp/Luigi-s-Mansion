execute unless score #cellar Ticking matches 1 run function #luigis_mansion:room/hidden/cellar/load
execute as @a[x=734,y=1,z=57,dx=14,dy=7,dz=21] unless entity @s[scores={Room=58}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=734,y=1,z=57,dx=14,dy=7,dz=21] Room 58
#todelete - old furniture
scoreboard players set #temp Room 58
#/todelete

execute as @a[scores={Room=58}] run function luigis_mansion:room/hidden/cellar/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/cellar/interactions/room
#/todelete

execute if entity @a[tag=!pause_dialog,scores={Room=58},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/cellar/ghosts