execute unless score #ceramics_studio Ticking matches 1 run function #3ds_remake:room/hidden/ceramics_studio/load
execute as @a[x=696,y=28,z=56,dx=17,dy=7,dz=25] unless entity @s[scores={Room=65}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=696,y=28,z=56,dx=17,dy=7,dz=25] Room 65
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 65
#/todelete

execute as @a[scores={Room=65}] run function 3ds_remake:room/hidden/ceramics_studio/tick_per_player

function #3ds_remake:room/hidden/ceramics_studio/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=65},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/ceramics_studio/ghosts