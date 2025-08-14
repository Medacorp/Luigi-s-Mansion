execute unless score #gallery_hallway_2 Ticking matches 1 run function #luigis_mansion:room/gallery_hallway_2/load
execute as @e[tag=player,x=4,y=1,z=27,dx=5,dy=6,dz=21] unless entity @s[x=0,y=1,z=17,dx=18,dy=6,dz=11] unless entity @s[scores={Room=-6}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=player,x=4,y=1,z=27,dx=5,dy=6,dz=21] unless entity @s[x=0,y=1,z=17,dx=18,dy=6,dz=11] run scoreboard players set @s Room -6

execute as @a[scores={Room=-6}] run function luigis_mansion:room/gallery_hallway_2/tick_per_player