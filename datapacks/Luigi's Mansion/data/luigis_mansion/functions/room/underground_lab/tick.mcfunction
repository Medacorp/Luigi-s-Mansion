execute unless score #underground_lab Ticking matches 1 run function #luigis_mansion:room/underground_lab/load
execute as @a[gamemode=!spectator,x=779,y=76,z=5,dx=18,dy=12,dz=19] unless entity @s[scores={Room=-1}] run scoreboard players set @s LastRoom -1
execute as @e[tag=!spectator,x=779,y=76,z=5,dx=18,dy=12,dz=19] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room -1
scoreboard players set #temp Room -1

scoreboard players set @a[gamemode=!spectator,x=788,y=89,z=21,dx=1,dy=2,dz=0] Room 0
execute as @a[gamemode=!spectator,x=788,y=89,z=21,dx=1,dy=2,dz=0] unless entity @s[scores={MusicGroup=0,MusicType=0}] run function luigis_mansion:other/music/set/silence
execute as @a[gamemode=!spectator,scores={Room=-1}] run function luigis_mansion:room/underground_lab/tick_per_player

setblock 786 78 21 minecraft:lever[face=floor,facing=south,powered=false]
setblock 785 78 21 minecraft:lever[face=floor,facing=south,powered=false]
setblock 784 78 20 minecraft:lever[face=floor,facing=south,powered=false]

function #luigis_mansion:room/underground_lab/interactions/room

function luigis_mansion:room/door/underground_lab_training_room
function luigis_mansion:room/door/underground_lab_ghost_portrificationizer_room