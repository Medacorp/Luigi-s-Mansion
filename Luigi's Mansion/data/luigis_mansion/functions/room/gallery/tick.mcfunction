execute unless score #gallery Ticking matches 1 run function #luigis_mansion:room/gallery/load
execute as @a[x=729,y=77,z=-40,dx=48,dy=9,dz=23] unless entity @s[scores={Room=-4}] run scoreboard players set @s LastRoom -4
execute as @e[type=!minecraft:item_frame,x=729,y=77,z=-40,dx=48,dy=9,dz=23] run scoreboard players set @s Room -4

execute as @a[gamemode=!spectator,x=729,y=77,z=-40,dx=48,dy=9,dz=23] run function luigis_mansion:room/gallery/tick_per_player

function #luigis_mansion:room/gallery/interactions/room

function luigis_mansion:room/door/gallery_1
function luigis_mansion:room/door/gallery_2