execute unless score #fortune_tellers_room Ticking matches 1 run function #luigis_mansion:room/hidden/fortune_tellers_room/load
execute as @a[x=734,y=10,z=34,dx=14,dy=7,dz=20] unless entity @s[scores={Room=20}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=734,y=10,z=34,dx=14,dy=7,dz=20] Room 20
#todelete - old furniture
scoreboard players set #temp Room 20
#/todelete

execute as @a[scores={Room=20}] run function luigis_mansion:room/hidden/fortune_tellers_room/tick_per_player

function #luigis_mansion:room/hidden/fortune_tellers_room/interactions/room

execute unless entity @e[tag=light_me,tag=!lit,scores={Room=20},limit=1] run tag @e[scores={Room=20},tag=room_clear_loot_dropper] add drop_loot

execute if entity @a[tag=!pause_dialog,scores={Room=20},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/fortune_tellers_room/ghosts