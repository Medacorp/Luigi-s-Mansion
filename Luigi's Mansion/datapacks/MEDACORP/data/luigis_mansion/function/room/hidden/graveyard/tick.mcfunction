execute unless score #graveyard Ticking matches 1 run function #luigis_mansion:room/hidden/graveyard/load
execute as @a[x=644,y=101,z=-40,dx=27,dy=7,dz=16] unless entity @s[scores={Room=29}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=644,y=101,z=-40,dx=27,dy=7,dz=16] Room 29
#todelete - old furniture
scoreboard players set #temp Room 29
#/todelete

execute as @a[scores={Room=29}] run function luigis_mansion:room/hidden/graveyard/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/graveyard/interactions/room
#/todelete

execute if entity @a[tag=!pause_dialog,scores={Room=29},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/graveyard/ghosts