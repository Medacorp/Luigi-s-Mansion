execute if score #mirrored Selected matches 1 run scoreboard players set #mirrored Selected 2
execute unless score #gallery Ticking matches 1 run function #luigis_mansion:room/gallery/load
execute as @e[tag=player,x=764,y=75,z=-41,dx=14,dy=10,dz=25] unless entity @s[scores={Room=-4}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=764,y=75,z=-41,dx=14,dy=10,dz=25] Room -4

execute as @a[scores={Room=-4}] run function luigis_mansion:room/gallery/tick_per_player

execute if score #mirrored Selected matches 2 run scoreboard players set #mirrored Selected 1