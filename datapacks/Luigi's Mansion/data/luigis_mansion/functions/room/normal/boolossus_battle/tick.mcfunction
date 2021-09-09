execute unless score #boolossus_battle Ticking matches 1 run function #luigis_mansion:room/normal/boolossus_battle/load
execute as @a[gamemode=!spectator,x=562,y=15,z=-63,dx=48,dy=76,dz=87] run scoreboard players set @s LastRoom 75
execute as @e[type=!minecraft:item_frame,x=562,y=15,z=-63,dx=48,dy=76,dz=87] unless entity @s[type=!minecraft:player,scores={Room=-2147483648..}] run scoreboard players set @s Room 75

execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.bogmire{health:0} run scoreboard players add #boolossus_battle ReturnTimer 1
execute if score #boolossus_battle ReturnTimer matches 100.. as @a[gamemode=!spectator,scores={Room=75}] run function luigis_mansion:room/normal/boolossus_battle/clear_balcony_2

execute as @a[gamemode=!spectator,scores={Room=75}] run function luigis_mansion:room/normal/boolossus_battle/tick_per_player

execute if data storage luigis_mansion:data current_state.current_data.rooms.balcony_2{cleared:0b} as @a unless entity @s[scores={Room=75}] run function luigis_mansion:room/normal/boolossus_battle/warp_to

function luigis_mansion:room/normal/boolossus_battle/ghosts