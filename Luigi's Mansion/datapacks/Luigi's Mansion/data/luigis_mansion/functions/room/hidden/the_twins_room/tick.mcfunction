execute unless score #the_twins_room Ticking matches 1 run function #luigis_mansion:room/hidden/the_twins_room/load
execute as @a[gamemode=!spectator,x=736,y=17,z=-35,dx=14,dy=9,dz=21] unless entity @s[scores={Room=49}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=736,y=17,z=-35,dx=14,dy=9,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 49
scoreboard players set #temp Room 49

execute as @a[gamemode=!spectator,scores={Room=49}] run function luigis_mansion:room/hidden/the_twins_room/tick_per_player

function #luigis_mansion:room/hidden/the_twins_room/interactions/room

execute if score #the_twins_room Wave matches 5 run function luigis_mansion:room/hidden/the_twins_room/hide_and_seek

scoreboard players set #temp Room 49
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/the_twins_room/ghosts
tag @a[tag=same_room] remove same_room