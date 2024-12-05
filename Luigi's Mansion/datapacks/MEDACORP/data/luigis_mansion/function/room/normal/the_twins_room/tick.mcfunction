execute unless score #the_twins_room Ticking matches 1 run function #luigis_mansion:room/normal/the_twins_room/load
execute as @e[tag=player,x=736,y=19,z=29,dx=14,dy=7,dz=21] unless entity @s[scores={Room=49}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=736,y=19,z=29,dx=14,dy=7,dz=21] Room 49
#todelete - old furniture
scoreboard players set #temp Room 49
#/todelete

execute as @a[scores={Room=49}] run function luigis_mansion:room/normal/the_twins_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/the_twins_room/interactions/room
#/todelete

execute if score #the_twins_room Wave matches 5 run function luigis_mansion:room/normal/the_twins_room/hide_and_seek

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=49},limit=1] run function luigis_mansion:room/normal/the_twins_room/ghosts