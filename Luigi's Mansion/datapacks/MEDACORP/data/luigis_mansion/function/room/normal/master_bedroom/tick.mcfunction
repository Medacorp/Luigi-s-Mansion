execute unless score #master_bedroom Ticking matches 1 run function #luigis_mansion:room/normal/master_bedroom/load
execute as @a[x=682,y=110,z=37,dx=17,dy=7,dz=20] unless entity @s[scores={Room=9}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=682,y=110,z=37,dx=17,dy=7,dz=20] Room 9
#todelete - old furniture
scoreboard players set #temp Room 9
#/todelete

execute as @a[scores={Room=9}] run function luigis_mansion:room/normal/master_bedroom/tick_per_player

function #luigis_mansion:room/normal/master_bedroom/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=9},tag=!spectator,limit=1] run function luigis_mansion:room/normal/master_bedroom/ghosts