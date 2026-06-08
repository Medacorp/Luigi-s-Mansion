execute unless score #foyer Ticking matches 1 run function #luigis_mansion:room/normal/foyer/load
execute as @e[tag=player,x=743,y=10,z=-2,dx=15,dy=16,dz=21] unless entity @s[scores={Room=1}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=743,y=10,z=-2,dx=15,dy=16,dz=21] Room 1

execute as @a[scores={Room=1}] run function luigis_mansion:room/normal/foyer/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=1},limit=1] run function luigis_mansion:room/normal/foyer/ghosts