execute unless score #graveyard Ticking matches 1 run function #3ds_remake:room/hidden/graveyard/load
execute as @e[tag=player,x=644,y=101,z=38,dx=27,dy=7,dz=18] unless entity @s[scores={Room=29}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=644,y=101,z=38,dx=27,dy=7,dz=18] Room 29
#todelete - old furniture
scoreboard players set #temp Room 29
#/todelete

execute as @a[scores={Room=29}] run function 3ds_remake:room/hidden/graveyard/tick_per_player

#todelete - old furniture
function #3ds_remake:room/hidden/graveyard/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=29},limit=1] run function 3ds_remake:room/hidden/graveyard/ghosts