execute unless score #tea_room Ticking matches 1 run function #3ds_remake:room/hidden/tea_room/load
execute as @a[x=637,y=19,z=-62,dx=12,dy=7,dz=33] unless entity @s[scores={Room=34}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=637,y=19,z=-62,dx=12,dy=7,dz=33] Room 34
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 34
#/todelete

execute as @a[scores={Room=34}] run function 3ds_remake:room/hidden/tea_room/tick_per_player

function #3ds_remake:room/hidden/tea_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=34},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/tea_room/ghosts