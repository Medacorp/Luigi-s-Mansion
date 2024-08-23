execute unless score #underground_lab Ticking matches 1 run function #luigis_mansion:room/underground_lab/load
execute as @a[x=779,y=74,z=5,dx=18,dy=14,dz=19] unless entity @s[scores={Room=-1}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=779,y=74,z=5,dx=18,dy=14,dz=19] Room -1

scoreboard players set @a[tag=!spectator,x=788,y=87,z=21,dx=1,dy=4,dz=0] Room 0
execute as @a[tag=!spectator,x=788,y=87,z=21,dx=1,dy=4,dz=0] unless entity @s[scores={MusicGroup=0,MusicType=0}] run function luigis_mansion:other/music/set/silence

execute if entity @e[tag=e_gadd,scores={Room=-1}] if data storage luigis_mansion:data rooms.underground_lab{cleared:0b} unless data storage luigis_mansion:data dialogs[{room:-1}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"the_mansion"},room:-1,progress:0}
execute if entity @e[tag=e_gadd,scores={Room=-1},tag=talk] if data storage luigis_mansion:data rooms.underground_lab{cleared:1b} unless data storage luigis_mansion:data dialogs[{room:-1}] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"underground_lab"},room:-1,progress:0}

execute as @a[scores={Room=-1}] run function luigis_mansion:room/underground_lab/tick_per_player

setblock 786 78 21 minecraft:lever[face=floor,facing=south,powered=false]
setblock 785 78 21 minecraft:lever[face=floor,facing=south,powered=false]
setblock 784 78 20 minecraft:lever[face=floor,facing=south,powered=false]