execute unless score #mirror_room Ticking matches 1 run function #luigis_mansion:room/hidden/mirror_room/load
execute as @a[gamemode=!spectator,x=734,y=10,z=57,dx=14,dy=8,dz=21] unless entity @s[scores={Room=17}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=734,y=10,z=57,dx=14,dy=8,dz=21] run scoreboard players set @s Room 17

scoreboard players set @e[scores={Room=17},type=!minecraft:marker] MirrorX 735

execute as @a[gamemode=!spectator,x=734,y=10,z=57,dx=14,dy=8,dz=21] run function luigis_mansion:room/hidden/mirror_room/tick_per_player

function #luigis_mansion:room/hidden/mirror_room/interactions/room

execute if block 736 13 76 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] run setblock 734 13 76 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true]
execute if block 736 13 76 minecraft:brewing_stand[has_bottle_0=false,has_bottle_1=false,has_bottle_2=false] run setblock 734 13 76 minecraft:brewing_stand[has_bottle_0=false,has_bottle_1=false,has_bottle_2=false]
execute if block 736 13 59 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] run setblock 734 13 59 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true]
execute if block 736 13 59 minecraft:brewing_stand[has_bottle_0=false,has_bottle_1=false,has_bottle_2=false] run setblock 734 13 59 minecraft:brewing_stand[has_bottle_0=false,has_bottle_1=false,has_bottle_2=false]

execute if block 736 13 76 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] if block 736 13 59 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] run function luigis_mansion:room/hidden/mirror_room/remove_blockade

function luigis_mansion:room/hidden/mirror_room/ghosts

function luigis_mansion:room/hidden/door/fortune_tellers_room_mirror_room