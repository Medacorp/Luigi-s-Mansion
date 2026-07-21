execute unless score #telephone_room Ticking matches 1 run function #3ds_remake:room/hidden/telephone_room/load
execute as @e[tag=player,x=736,y=28,z=0,dx=24,dy=7,dz=35] unless entity @s[scores={Room=56}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=736,y=28,z=0,dx=24,dy=7,dz=35] Room 56
#todelete - old furniture
scoreboard players set #temp Room 56
#/todelete

execute as @a[scores={Room=56}] run function 3ds_remake:room/hidden/telephone_room/tick_per_player

#todelete - old furniture
function #3ds_remake:room/hidden/telephone_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=56},limit=1] run function 3ds_remake:room/hidden/telephone_room/ghosts