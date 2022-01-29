execute unless score #king_boo_battle Ticking matches 1 run function #luigis_mansion:room/normal/king_boo_battle/load
execute as @a[gamemode=!spectator,x=465,y=25,z=-40,dx=49,dy=60,dz=85] run scoreboard players set @s LastRoom 76
execute as @e[x=465,y=25,z=-40,dx=49,dy=60,dz=85] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 76
scoreboard players set #temp Room 76

execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo{health:0} run scoreboard players add #king_boo_battle ReturnTimer 1
execute if score #king_boo_battle ReturnTimer matches 100.. as @a[gamemode=!spectator,scores={Room=76}] run function luigis_mansion:room/normal/king_boo_battle/clear_secret_altar

execute as @a[gamemode=!spectator,scores={Room=76}] run function luigis_mansion:room/normal/king_boo_battle/tick_per_player

execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:0b} as @a unless entity @s[scores={Room=76}] run function luigis_mansion:room/normal/king_boo_battle/warp_to

function luigis_mansion:room/normal/king_boo_battle/ghosts