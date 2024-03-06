execute unless score #master_bedroom Ticking matches 1 run function #3ds_remake:room/hidden/master_bedroom/load
execute as @a[gamemode=!spectator,x=682,y=108,z=37,dx=17,dy=9,dz=20] unless entity @s[scores={Room=9}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=682,y=108,z=37,dx=17,dy=9,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 9
scoreboard players set #temp Room 9

execute as @a[scores={Room=9}] run function 3ds_remake:room/hidden/master_bedroom/tick_per_player

function #3ds_remake:room/hidden/master_bedroom/interactions/room

scoreboard players set #temp Room 9
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=exact_same_room,limit=1] run function 3ds_remake:room/hidden/master_bedroom/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room