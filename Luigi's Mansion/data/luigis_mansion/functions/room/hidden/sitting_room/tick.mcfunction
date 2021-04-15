execute unless score #sitting_room Ticking matches 1 run function #luigis_mansion:room/hidden/sitting_room/load
execute as @a[x=705,y=111,z=17,dx=14,dy=6,dz=20] unless entity @s[scores={Room=56}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=705,y=111,z=17,dx=14,dy=6,dz=20] run scoreboard players set @s Room 56

execute as @a[gamemode=!spectator,x=707,y=111,z=19,dx=10,dy=6,dz=16] run function luigis_mansion:room/hidden/sitting_room/tick_per_player

function #luigis_mansion:room/hidden/sitting_room/interactions/room

function luigis_mansion:room/hidden/sitting_room/ghosts

function luigis_mansion:room/hidden/door/hallway_sitting_room
function luigis_mansion:room/hidden/door/sitting_room_guest_room