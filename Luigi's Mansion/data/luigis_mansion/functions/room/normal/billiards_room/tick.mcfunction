execute unless score #billiards_room Ticking matches 1 run function #luigis_mansion:room/normal/billiards_room/load
execute as @a[x=671,y=102,z=12,dx=15,dy=6,dz=27] unless entity @s[scores={Room=37}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=671,y=102,z=12,dx=15,dy=6,dz=27] run scoreboard players set @s Room 37

execute as @a[gamemode=!spectator,x=673,y=102,z=14,dx=11,dy=6,dz=23] run function luigis_mansion:room/normal/billiards_room/tick_per_player

function #luigis_mansion:room/normal/billiards_room/interactions/room

function luigis_mansion:room/normal/billiards_room/ghosts

function luigis_mansion:room/normal/door/main_hallway_billiards_room
function luigis_mansion:room/normal/door/billiards_room_projection_room