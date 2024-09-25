execute unless score #bottom_of_the_well Ticking matches 1 run function #3ds_remake:room/hidden/bottom_of_the_well/load
execute as @a[x=645,y=92,z=-9,dx=6,dy=7,dz=10] unless entity @s[x=648.5,y=93,z=-9.5,distance=..0.7] unless entity @s[scores={Room=31}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=645,y=92,z=-9,dx=6,dy=7,dz=10] unless entity @s[x=648.5,y=93,z=-9.5,distance=..0.7] run scoreboard players set @s Room 31
#todelete - old furniture
scoreboard players set #temp Room 31
#/todelete

execute as @e[scores={Room=31},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorZ -26

execute as @a[scores={Room=31}] run function 3ds_remake:room/hidden/bottom_of_the_well/tick_per_player

#todelete - old furniture
function #3ds_remake:room/hidden/bottom_of_the_well/interactions/room
#/todelete

execute if entity @a[tag=!pause_dialog,scores={Room=31},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/bottom_of_the_well/ghosts