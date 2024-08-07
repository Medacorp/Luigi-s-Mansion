execute unless score #balcony_2 Ticking matches 1 run function #3ds_remake:room/hidden/balcony_2/load
execute as @a[x=653,y=119,z=-42,dx=30,dy=25,dz=80] unless entity @s[scores={Room=53}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=653,y=119,z=-42,dx=30,dy=25,dz=80] Room 53
#todelete - old furniture
scoreboard players set #temp Room 53
#/todelete

execute as @a[scores={Room=53}] run function 3ds_remake:room/hidden/balcony_2/tick_per_player

function #3ds_remake:room/hidden/balcony_2/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=53},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/balcony_2/ghosts