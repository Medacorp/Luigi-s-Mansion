execute unless score #astral_hall Ticking matches 1 run function #3ds_remake:room/hidden/astral_hall/load
execute as @a[gamemode=!spectator,x=660,y=17,z=-93,dx=12,dy=9,dz=22] unless entity @s[scores={Room=45}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=660,y=17,z=-93,dx=12,dy=9,dz=22] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 45
scoreboard players set #temp Room 45

execute as @a[scores={Room=45}] run function 3ds_remake:room/hidden/astral_hall/tick_per_player

function #3ds_remake:room/hidden/astral_hall/interactions/room

scoreboard players set #temp Room 45
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=exact_same_room,limit=1] run function 3ds_remake:room/hidden/astral_hall/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room