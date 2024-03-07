execute unless score #guest_room Ticking matches 1 run function #luigis_mansion:room/hidden/guest_room/load
execute as @a[gamemode=!spectator,x=734,y=17,z=57,dx=14,dy=9,dz=21] unless entity @s[scores={Room=70}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=734,y=17,z=57,dx=14,dy=9,dz=21] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 70

execute as @a[scores={Room=70}] run function luigis_mansion:room/hidden/guest_room/tick_per_player

function #luigis_mansion:room/hidden/guest_room/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=70},limit=1] run function luigis_mansion:room/hidden/guest_room/ghosts
execute unless data storage luigis_mansion:data current_state.current_data.rooms.guest_room{cleared:1b} as @e[tag=haunted_clown_doll,scores={Room=70,WaitTime=..60}] run tag @s add flipped_gravity