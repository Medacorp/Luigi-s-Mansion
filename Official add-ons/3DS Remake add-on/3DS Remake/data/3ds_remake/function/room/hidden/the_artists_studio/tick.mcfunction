execute unless score #the_artists_studio Ticking matches 1 run function #3ds_remake:room/hidden/the_artists_studio/load
execute as @e[tag=player,x=687,y=28,z=-80,dx=16,dy=7,dz=25] unless entity @s[scores={Room=71}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=687,y=28,z=-80,dx=16,dy=7,dz=25] Room 71
#todelete - old furniture
scoreboard players set #temp Room 71
#/todelete

execute as @a[scores={Room=71}] run function 3ds_remake:room/hidden/the_artists_studio/tick_per_player

tag @e[tag=ghost,tag=hidden,tag=can_spawn,scores={Room=71}] add spawn
execute as @e[x=697.0,y=27,z=-78.0,dx=5,dy=7,dz=21,tag=ghost,tag=hidden,y_rotation=-180..0] at @s run function 3ds_remake:room/hidden/the_artists_studio/stay_near_painting

#todelete - old furniture
function #3ds_remake:room/hidden/the_artists_studio/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=71},limit=1] run function 3ds_remake:room/hidden/the_artists_studio/ghosts