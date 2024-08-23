execute unless score #sitting_room Ticking matches 1 run function #3ds_remake:room/hidden/sitting_room/load
execute as @a[x=734,y=19,z=-39,dx=14,dy=7,dz=20] unless entity @s[scores={Room=69}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=734,y=19,z=-39,dx=14,dy=7,dz=20] Room 69
#todelete - old furniture
scoreboard players set #temp Room 69
#/todelete

execute as @a[scores={Room=69}] run function 3ds_remake:room/hidden/sitting_room/tick_per_player

#todelete - old furniture
function #3ds_remake:room/hidden/sitting_room/interactions/room
#/todelete

execute if entity @a[tag=!pause_dialog,scores={Room=69},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/sitting_room/ghosts