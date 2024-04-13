execute unless score #the_twins_room Ticking matches 1 run function #3ds_remake:room/hidden/the_twins_room/load
execute as @a[x=736,y=19,z=29,dx=14,dy=7,dz=21] unless entity @s[scores={Room=49}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=736,y=19,z=29,dx=14,dy=7,dz=21] Room 49
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 49
#/todelete

execute as @a[scores={Room=49}] run function 3ds_remake:room/hidden/the_twins_room/tick_per_player

function #3ds_remake:room/hidden/the_twins_room/interactions/room

execute if score #the_twins_room Wave matches 5 run function 3ds_remake:room/hidden/the_twins_room/hide_and_seek

execute if entity @a[tag=!pause_dialog,scores={Room=49},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/the_twins_room/ghosts