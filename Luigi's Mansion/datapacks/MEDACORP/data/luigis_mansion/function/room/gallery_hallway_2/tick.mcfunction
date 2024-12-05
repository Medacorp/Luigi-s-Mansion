execute unless score #gallery_hallway_2 Ticking matches 1 run function #luigis_mansion:room/gallery_hallway_2/load
execute as @e[tag=player,x=743,y=75,z=-36,dx=20,dy=10,dz=6] unless entity @s[x=764,y=75,z=-41,dx=8,dy=10,dz=25] unless entity @s[scores={Room=-6}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=player,x=743,y=75,z=-36,dx=20,dy=10,dz=6] unless entity @s[x=764,y=75,z=-41,dx=8,dy=10,dz=25] run scoreboard players set @s Room -6

execute as @a[scores={Room=-6}] run function luigis_mansion:room/gallery_hallway_2/tick_per_player