execute unless score #gallery_side_room Ticking matches 1 run function #3ds_remake:room/gallery_side_room/load
execute as @a[x=765,y=-1,z=-60,dx=11,dy=16,dz=18] unless entity @s[scores={Room=-9}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=765,y=-1,z=-60,dx=11,dy=16,dz=18] Room -9

execute as @a[scores={Room=-9}] run function 3ds_remake:room/gallery_side_room/tick_per_player

execute unless block 736 2 -24 minecraft:barrier run function 3ds_remake:room/gallery_side_room/generate