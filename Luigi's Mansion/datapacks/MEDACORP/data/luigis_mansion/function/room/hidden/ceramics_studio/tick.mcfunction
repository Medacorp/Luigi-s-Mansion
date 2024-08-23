execute unless score #ceramics_studio Ticking matches 1 run function #luigis_mansion:room/hidden/ceramics_studio/load
execute as @a[x=696,y=28,z=-66,dx=17,dy=7,dz=25] unless entity @s[scores={Room=65}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=696,y=28,z=-66,dx=17,dy=7,dz=25] Room 65
#todelete - old furniture
scoreboard players set #temp Room 65
#/todelete

execute as @a[scores={Room=65}] run function luigis_mansion:room/hidden/ceramics_studio/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/ceramics_studio/interactions/room
#/todelete

execute if entity @a[tag=!pause_dialog,scores={Room=65},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/ceramics_studio/ghosts