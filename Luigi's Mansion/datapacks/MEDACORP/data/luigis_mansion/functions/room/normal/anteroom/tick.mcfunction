execute unless score #anteroom Ticking matches 1 run function #luigis_mansion:room/normal/anteroom/load
execute as @a[x=683,y=19,z=22,dx=12,dy=7,dz=21] unless entity @s[scores={Room=4}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=683,y=19,z=22,dx=12,dy=7,dz=21] Room 4

execute as @a[scores={Room=4}] run function luigis_mansion:room/normal/anteroom/tick_per_player

function #luigis_mansion:room/normal/anteroom/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=4},tag=!spectator,limit=1] run function luigis_mansion:room/normal/anteroom/ghosts