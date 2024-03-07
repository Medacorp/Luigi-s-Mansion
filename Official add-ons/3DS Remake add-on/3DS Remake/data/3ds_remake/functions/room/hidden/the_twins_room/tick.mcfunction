execute unless score #the_twins_room Ticking matches 1 run function #3ds_remake:room/hidden/the_twins_room/load
execute as @a[gamemode=!spectator,x=736,y=17,z=29,dx=14,dy=9,dz=21] unless entity @s[scores={Room=49}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=736,y=17,z=29,dx=14,dy=9,dz=21] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 49

execute as @a[scores={Room=49}] run function 3ds_remake:room/hidden/the_twins_room/tick_per_player

function #3ds_remake:room/hidden/the_twins_room/interactions/room

execute if score #the_twins_room Wave matches 5 run function 3ds_remake:room/hidden/the_twins_room/hide_and_seek

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=49},limit=1] run function 3ds_remake:room/hidden/the_twins_room/ghosts