execute unless score #fortune_tellers_room Ticking matches 1 run function #luigis_mansion:room/normal/fortune_tellers_room/load
execute as @a[gamemode=!spectator,x=734,y=8,z=-39,dx=14,dy=9,dz=20] unless entity @s[scores={Room=20}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=734,y=8,z=-39,dx=14,dy=9,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 20
scoreboard players set #temp Room 20

execute as @a[scores={Room=20}] run function luigis_mansion:room/normal/fortune_tellers_room/tick_per_player

function #luigis_mansion:room/normal/fortune_tellers_room/interactions/room

execute unless entity @e[tag=light_me,tag=!lit,scores={Room=20},limit=1] run tag @e[scores={Room=20},tag=room_clear_loot_dropper] add drop_loot

scoreboard players set #temp Room 20
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=exact_same_room,limit=1] run function luigis_mansion:room/normal/fortune_tellers_room/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room