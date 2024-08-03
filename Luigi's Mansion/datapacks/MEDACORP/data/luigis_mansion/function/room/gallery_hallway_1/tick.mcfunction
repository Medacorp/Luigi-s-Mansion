execute unless score #gallery_hallway_1 Ticking matches 1 run function #luigis_mansion:room/gallery_hallway_1/load
execute as @a[x=743,y=75,z=-27,dx=20,dy=10,dz=6] unless entity @s[x=764,y=75,z=-41,dx=8,dy=10,dz=25] unless entity @s[scores={Room=-5}] run scoreboard players operation @s LastRoom = @s Room
execute as @a[x=743,y=75,z=-27,dx=20,dy=10,dz=6] unless entity @s[x=764,y=75,z=-41,dx=8,dy=10,dz=25] run scoreboard players set @s Room -5
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room -5
#/todelete

execute as @a[scores={Room=-5}] run function luigis_mansion:room/gallery_hallway_1/tick_per_player