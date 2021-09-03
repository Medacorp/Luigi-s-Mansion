execute unless score #chauncey_battle Ticking matches 1 run function #luigis_mansion:room/hidden/chauncey_battle/load
execute as @a[gamemode=!spectator,x=782,y=6,z=-69,dx=41,dy=33,dz=41] run scoreboard players set @s LastRoom 73
execute as @e[type=!minecraft:item_frame,x=782,y=6,z=-69,dx=41,dy=33,dz=41] unless entity @s[type=!minecraft:player,scores={Room=-2147483648..}] run scoreboard players set @s Room 73

execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey{health:0} run scoreboard players add #chauncey_battle ReturnTimer 1
execute if score #chauncey_battle ReturnTimer matches 100.. run function luigis_mansion:room/hidden/chauncey_battle/clear_nursery

execute as @a[gamemode=!spectator,scores={Room=73}] run function luigis_mansion:room/hidden/chauncey_battle/tick_per_player

execute if data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:0b} as @a unless entity @s[scores={Room=73}] run function luigis_mansion:room/hidden/chauncey_battle/warp_to

function luigis_mansion:room/hidden/chauncey_battle/ghosts