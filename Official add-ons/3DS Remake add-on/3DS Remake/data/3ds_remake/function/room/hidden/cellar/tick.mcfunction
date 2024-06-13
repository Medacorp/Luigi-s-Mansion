execute unless score #cellar Ticking matches 1 run function #3ds_remake:room/hidden/cellar/load
execute as @a[x=734,y=1,z=-63,dx=14,dy=7,dz=21] unless entity @s[scores={Room=58}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=734,y=1,z=-63,dx=14,dy=7,dz=21] Room 58
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 58
#/todelete

execute as @a[scores={Room=58}] run function 3ds_remake:room/hidden/cellar/tick_per_player

function #3ds_remake:room/hidden/cellar/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=58},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/cellar/ghosts