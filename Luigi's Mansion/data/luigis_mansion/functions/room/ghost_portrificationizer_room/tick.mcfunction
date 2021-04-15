execute unless score #ghost_portrificationizer_room Ticking matches 1 run function #luigis_mansion:room/ghost_portrificationizer_room/load
execute as @a[x=765,y=77,z=-14,dx=12,dy=6,dz=36] unless entity @s[scores={Room=-3}] run scoreboard players set @s LastRoom -3
execute as @e[type=!minecraft:painting,type=!minecraft:item_frame,x=765,y=77,z=-14,dx=12,dy=6,dz=36] run scoreboard players set @s Room -3
execute as @e[type=minecraft:item_frame,tag=portrait,x=765,y=77,z=-14,dx=12,dy=6,dz=36] run scoreboard players set @s Room -3

execute as @a[gamemode=!spectator,x=765,y=77,z=-14,dx=12,dy=6,dz=36] run function luigis_mansion:room/ghost_portrificationizer_room/tick_per_player

setblock 772 77 1 minecraft:lever[face=wall,facing=east,powered=true]
setblock 772 77 -1 minecraft:lever[face=wall,facing=east,powered=true]
setblock 768 77 1 minecraft:lever[face=wall,facing=west,powered=true]
setblock 768 77 -1 minecraft:lever[face=wall,facing=west,powered=true]

function #luigis_mansion:room/ghost_portrificationizer_room/interactions/room