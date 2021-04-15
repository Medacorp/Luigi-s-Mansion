execute unless score #guest_room Ticking matches 1 run function #luigis_mansion:room/normal/guest_room/load
execute as @a[x=705,y=111,z=-42,dx=14,dy=6,dz=21] unless entity @s[scores={Room=57}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=705,y=111,z=-42,dx=14,dy=6,dz=21] run scoreboard players set @s Room 57

execute as @a[gamemode=!spectator,x=707,y=111,z=-40,dx=10,dy=6,dz=17] run function luigis_mansion:room/normal/guest_room/tick_per_player

function #luigis_mansion:room/normal/guest_room/interactions/room

function luigis_mansion:room/normal/guest_room/ghosts
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} as @e[tag=haunted_clown_doll,scores={Room=57,WaitTime=..60}] run data modify entity @s Pose.Head[2] set value 180.0f

function luigis_mansion:room/normal/door/sitting_room_guest_room