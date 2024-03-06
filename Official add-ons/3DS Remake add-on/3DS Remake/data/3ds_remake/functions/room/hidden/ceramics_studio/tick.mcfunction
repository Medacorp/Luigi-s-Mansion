execute unless score #ceramics_studio Ticking matches 1 run function #3ds_remake:room/hidden/ceramics_studio/load
execute as @a[gamemode=!spectator,x=696,y=26,z=56,dx=17,dy=9,dz=25] unless entity @s[scores={Room=65}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=696,y=26,z=56,dx=17,dy=9,dz=25] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 65
scoreboard players set #temp Room 65

execute as @a[scores={Room=65}] run function 3ds_remake:room/hidden/ceramics_studio/tick_per_player

function #3ds_remake:room/hidden/ceramics_studio/interactions/room

scoreboard players set #temp Room 65
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=exact_same_room,limit=1] run function 3ds_remake:room/hidden/ceramics_studio/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room