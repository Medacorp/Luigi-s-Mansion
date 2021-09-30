execute unless score #billiards_room Ticking matches 1 run function #luigis_mansion:room/hidden/billiards_room/load
execute as @a[gamemode=!spectator,x=673,y=10,z=-76,dx=15,dy=8,dz=27] unless entity @s[scores={Room=47}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=673,y=10,z=-76,dx=15,dy=8,dz=27] run scoreboard players set @s Room 47

execute as @e[scores={Room=47},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 674

execute as @a[gamemode=!spectator,scores={Room=47}] run function luigis_mansion:room/hidden/billiards_room/tick_per_player

function #luigis_mansion:room/hidden/billiards_room/interactions/room

function luigis_mansion:room/hidden/billiards_room/ghosts

function luigis_mansion:room/hidden/door/hallway_5_billiards_room
function luigis_mansion:room/hidden/door/billiards_room_projection_room