execute if score #mirrored Selected matches 1 run scoreboard players set #mirrored Selected 2
execute unless score #ghost_portrificationizer_room Ticking matches 1 run function #luigis_mansion:room/ghost_portrificationizer_room/load
execute as @e[tag=player,x=22,y=1,z=17,dx=25,dy=6,dz=11] unless entity @s[scores={Room=-3}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=22,y=1,z=17,dx=25,dy=6,dz=11] Room -3
#todelete - old furniture
scoreboard players set #temp Room -3
#/todelete

execute as @a[scores={Room=-3}] run function luigis_mansion:room/ghost_portrificationizer_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/ghost_portrificationizer_room/interactions/room
#/todelete

execute if score #mirrored Selected matches 2 run scoreboard players set #mirrored Selected 1