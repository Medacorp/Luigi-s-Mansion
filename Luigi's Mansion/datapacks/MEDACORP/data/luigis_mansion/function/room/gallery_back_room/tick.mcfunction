execute unless score #gallery_back_room Ticking matches 1 run function #luigis_mansion:room/gallery_back_room/load
execute as @a[x=728,y=75,z=-37,dx=13,dy=10,dz=17] unless entity @s[scores={Room=-7}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=728,y=75,z=-37,dx=13,dy=10,dz=17] Room -7
#todelete - old furniture
scoreboard players set #temp Room -7
#/todelete

execute as @a[scores={Room=-7}] run function luigis_mansion:room/gallery_back_room/tick_per_player

function #luigis_mansion:room/gallery_back_room/interactions/room