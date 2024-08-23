execute unless score #gallery_hallway Ticking matches 1 run function #3ds_remake:room/gallery_hallway/load
execute as @a[x=746,y=-1,z=-31,dx=17,dy=5,dz=5] unless entity @s[scores={Room=-10}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=746,y=-1,z=-31,dx=17,dy=5,dz=5] Room -10

execute as @a[scores={Room=-10}] run function 3ds_remake:room/gallery_hallway/tick_per_player

execute unless block 736 2 -24 minecraft:barrier run function 3ds_remake:room/gallery/generate