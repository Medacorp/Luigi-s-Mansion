execute unless score #gallery Ticking matches 1 run function #luigis_mansion:room/gallery/load
execute as @a[gamemode=!spectator,x=728,y=77,z=-41,dx=50,dy=9,dz=25] unless entity @s[scores={Room=-4}] run scoreboard players set @s LastRoom -4
execute as @e[x=728,y=77,z=-41,dx=50,dy=9,dz=25] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room -4

execute as @a[gamemode=!spectator,scores={Room=-4}] run function luigis_mansion:room/gallery/tick_per_player

function #luigis_mansion:room/gallery/interactions/room

function luigis_mansion:room/door/ghost_portrificationizer_room_gallery
function luigis_mansion:room/door/gallery_1
function luigis_mansion:room/door/gallery_2