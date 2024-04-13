execute unless score #cold_storage Ticking matches 1 run function #3ds_remake:room/hidden/cold_storage/load
execute as @a[x=721,y=1,z=-6,dx=21,dy=7,dz=18] unless entity @s[scores={Room=68}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=721,y=1,z=-6,dx=21,dy=7,dz=18] Room 68
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 68
#/todelete

execute as @a[scores={Room=68}] run function 3ds_remake:room/hidden/cold_storage/tick_per_player

execute as @e[x=724.5,y=3,z=9.5,distance=..3,tag=ghost,tag=fleeing] at @s run teleport @s ~ ~ ~ -135 ~

function #3ds_remake:room/hidden/cold_storage/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=68},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/cold_storage/ghosts