execute unless score #butlers_room Ticking matches 1 run function #3ds_remake:room/hidden/butlers_room/load
execute as @a[x=737,y=10,z=53,dx=14,dy=7,dz=20] unless entity @s[scores={Room=23}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=737,y=10,z=53,dx=14,dy=7,dz=20] Room 23
#todelete - old furniture
scoreboard players set #temp Room 23
#/todelete

execute as @a[scores={Room=23}] run function 3ds_remake:room/hidden/butlers_room/tick_per_player

function #3ds_remake:room/hidden/butlers_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=23},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/butlers_room/ghosts