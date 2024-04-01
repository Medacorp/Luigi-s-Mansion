execute unless score #bogmire_battle Ticking matches 1 run function #luigis_mansion:room/normal/bogmire_battle/load
execute as @a[x=777,y=4,z=-26,dx=51,dy=38,dz=55] run scoreboard players set @s LastRoom 74
execute as @e[x=777,y=4,z=-26,dx=51,dy=38,dz=55] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 74

execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.bogmire{health:0} run scoreboard players add #bogmire_battle ReturnTimer 1
execute if score #bogmire_battle ReturnTimer matches 100.. as @a[scores={Room=74}] run function luigis_mansion:room/normal/bogmire_battle/clear_graveyard

execute as @a[scores={Room=74}] run function luigis_mansion:room/normal/bogmire_battle/tick_per_player

execute if data storage luigis_mansion:data current_state.current_data.rooms.graveyard{cleared:0b} as @a unless entity @s[scores={Room=74}] run function luigis_mansion:room/normal/bogmire_battle/warp_to

execute if entity @a[tag=!pause_dialog,scores={Room=74},tag=!spectator,limit=1] run function luigis_mansion:room/normal/bogmire_battle/ghosts