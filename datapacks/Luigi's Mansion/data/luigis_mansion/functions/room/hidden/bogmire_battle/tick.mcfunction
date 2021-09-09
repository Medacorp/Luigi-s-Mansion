execute unless score #bogmire_battle Ticking matches 1 run function #luigis_mansion:room/hidden/bogmire_battle/load
execute as @a[gamemode=!spectator,x=777,y=5,z=-14,dx=51,dy=37,dz=55] run scoreboard players set @s LastRoom 74
execute as @e[type=!minecraft:item_frame,x=777,y=5,z=-14,dx=51,dy=37,dz=55] unless entity @s[type=!minecraft:player,scores={Room=-2147483648..}] run scoreboard players set @s Room 74

execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.bogmire{health:0} run scoreboard players add #bogmire_battle ReturnTimer 1
execute if score #bogmire_battle ReturnTimer matches 100.. as @a[gamemode=!spectator,scores={Room=74}] run function luigis_mansion:room/hidden/bogmire_battle/clear_graveyard

execute as @a[gamemode=!spectator,scores={Room=74}] run function luigis_mansion:room/hidden/bogmire_battle/tick_per_player

execute if data storage luigis_mansion:data current_state.current_data.rooms.graveyard{cleared:0b} as @a unless entity @s[scores={Room=74}] run function luigis_mansion:room/hidden/bogmire_battle/warp_to

function luigis_mansion:room/hidden/bogmire_battle/ghosts