execute unless score #fortune_tellers_room Ticking matches 1 run function #luigis_mansion:room/normal/fortune_tellers_room/load
execute as @e[tag=player,x=734,y=10,z=-39,dx=14,dy=7,dz=20] unless entity @s[scores={Room=20}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=734,y=10,z=-39,dx=14,dy=7,dz=20] Room 20
#todelete - old furniture
scoreboard players set #temp Room 20
#/todelete

execute as @a[scores={Room=20}] run function luigis_mansion:room/normal/fortune_tellers_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/fortune_tellers_room/interactions/room
#/todelete

execute unless entity @e[tag=light_me,tag=!lit,scores={Room=20},limit=1] run tag @e[scores={Room=20},tag=room_clear_loot_dropper] add drop_loot

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=20},limit=1] run function luigis_mansion:room/normal/fortune_tellers_room/ghosts