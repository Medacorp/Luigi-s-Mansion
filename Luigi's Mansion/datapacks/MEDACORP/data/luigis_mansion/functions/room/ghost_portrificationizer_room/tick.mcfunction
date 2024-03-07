execute unless score #ghost_portrificationizer_room Ticking matches 1 run function #luigis_mansion:room/ghost_portrificationizer_room/load
execute as @a[gamemode=!spectator,x=764,y=75,z=-15,dx=14,dy=7,dz=38] unless entity @s[scores={Room=-3}] run scoreboard players set @s LastRoom -3
execute as @e[x=764,y=75,z=-15,dx=14,dy=7,dz=38] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room -3

execute as @a[scores={Room=-3}] run function luigis_mansion:room/ghost_portrificationizer_room/tick_per_player

setblock 772 77 1 minecraft:lever[face=wall,facing=east,powered=true]
setblock 772 77 -1 minecraft:lever[face=wall,facing=east,powered=true]
setblock 768 77 1 minecraft:lever[face=wall,facing=west,powered=true]
setblock 768 77 -1 minecraft:lever[face=wall,facing=west,powered=true]

function #luigis_mansion:room/ghost_portrificationizer_room/interactions/room