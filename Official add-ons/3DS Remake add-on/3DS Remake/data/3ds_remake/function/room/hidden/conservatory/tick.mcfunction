execute unless score #conservatory Ticking matches 1 run function #3ds_remake:room/hidden/conservatory/load
execute as @a[x=652,y=10,z=-29,dx=12,dy=7,dz=28] unless entity @s[scores={Room=25}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=652,y=10,z=-29,dx=12,dy=7,dz=28] Room 25
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 25
#/todelete

execute as @a[scores={Room=25}] run function 3ds_remake:room/hidden/conservatory/tick_per_player

function #3ds_remake:room/hidden/conservatory/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=25},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/conservatory/ghosts