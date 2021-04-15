execute unless score #underground_lab Ticking matches 1 run function #luigis_mansion:room/underground_lab/load
execute as @a[x=780,y=77,z=6,dx=16,dy=11,dz=17] unless entity @s[scores={Room=-1}] run scoreboard players set @s LastRoom -1
execute as @e[type=!minecraft:item_frame,x=780,y=77,z=6,dx=16,dy=11,dz=17] run scoreboard players set @s Room -1

scoreboard players set @a[x=788,y=89,z=21,dx=1,dy=2,dz=0] Room 0
execute as @a[x=788,y=89,z=21,dx=1,dy=2,dz=0] unless entity @s[scores={MusicType=0}] run function luigis_mansion:other/music/set/silence
execute as @a[gamemode=!spectator,x=780,y=77,z=6,dx=16,dy=11,dz=17] unless entity @s[x=788,y=89,z=21,dx=1,dy=2,dz=0] run function luigis_mansion:room/underground_lab/tick_per_player

setblock 786 78 21 minecraft:lever[face=floor,facing=south,powered=false]
setblock 785 78 21 minecraft:lever[face=floor,facing=south,powered=false]
setblock 784 78 20 minecraft:lever[face=floor,facing=south,powered=false]

function #luigis_mansion:room/underground_lab/interactions/room