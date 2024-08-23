execute unless score #study Ticking matches 1 run function #luigis_mansion:room/hidden/study/load
execute as @a[x=700,y=19,z=-48,dx=17,dy=7,dz=21] unless entity @s[scores={Room=8}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=700,y=19,z=-48,dx=17,dy=7,dz=21] Room 8
#todelete - old furniture
scoreboard players set #temp Room 8
#/todelete

execute as @a[scores={Room=8}] run function luigis_mansion:room/hidden/study/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/study/interactions/room
#/todelete

execute if entity @a[tag=!pause_dialog,scores={Room=8},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/study/ghosts