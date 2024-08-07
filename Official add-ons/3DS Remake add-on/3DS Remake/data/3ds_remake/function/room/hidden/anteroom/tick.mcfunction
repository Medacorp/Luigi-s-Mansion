execute unless score #anteroom Ticking matches 1 run function #3ds_remake:room/hidden/anteroom/load
execute as @a[x=683,y=19,z=22,dx=12,dy=7,dz=21] unless entity @s[scores={Room=4}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=683,y=19,z=22,dx=12,dy=7,dz=21] Room 4
#todelete - old furniture
scoreboard players set #temp Room 4
#/todelete

execute as @a[scores={Room=4}] run function 3ds_remake:room/hidden/anteroom/tick_per_player

function #3ds_remake:room/hidden/anteroom/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=4},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/anteroom/ghosts