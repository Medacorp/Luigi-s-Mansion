execute unless score #gallery_back_room Ticking matches 1 run function #luigis_mansion:room/gallery_back_room/load
execute as @e[tag=player,x=3,y=1,z=52,dx=12,dy=11,dz=11] unless entity @s[scores={Room=-7}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=3,y=1,z=52,dx=12,dy=11,dz=11] Room -7
#todelete - old furniture
scoreboard players set #temp Room -7
#/todelete

execute as @a[scores={Room=-7}] run function luigis_mansion:room/gallery_back_room/tick_per_player

function #luigis_mansion:room/gallery_back_room/interactions/room