execute if data storage luigis_mansion:data current_state.current_data.rooms.main_hallway{cleared:1b} if entity @s[tag=!blackout] unless entity @s[scores={MusicType=9}] unless entity @s[scores={MusicType=14}] unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27..30}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.main_hallway{cleared:1b} unless entity @s[scores={MusicType=6}] unless entity @s[scores={MusicType=14}] unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27..30}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/hallway
execute if entity @s[tag=blackout] unless entity @s[scores={MusicType=6}] unless entity @s[scores={MusicType=14}] unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27..30}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/hallway

execute if entity @s[x=669.5,y=11,z=7.5,distance=..4] if data storage luigis_mansion:data current_state.current_data.obtained_keys{courtyard:1b} run function luigis_mansion:room/hidden/main_hallway/clear_blockade

execute if entity @s[x=718,y=11,z=34,distance=..9,tag=!chance_check] unless data storage luigis_mansion:data current_state.current_data.rooms.main_hallway{cleared:1b} unless data storage luigis_mansion:data current_state.current_data.money_spawned{main_hallway_gold_mouse:1b} unless entity @e[tag=gold_mouse,scores={Room=10},limit=1] run function luigis_mansion:room/hidden/main_hallway/gold_mouse
execute if entity @s[x=718,y=11,z=34,distance=..9,tag=!chance_check,tag=blackout] unless data storage luigis_mansion:data current_state.current_data.money_spawned{main_hallway_gold_mouse:1b} unless entity @e[tag=gold_mouse,scores={Room=10},limit=1] run function luigis_mansion:room/hidden/main_hallway/gold_mouse
tag @s[x=718,y=11,z=34,distance=9..10,tag=chance_check] remove chance_check

execute unless data storage luigis_mansion:data current_state.current_data.rooms.conservatory{cleared:1b} run playsound luigis_mansion:music.mansion.melody ambient @s[x=680,y=11,z=4,dx=4,dy=6,dz=39,scores={HallwayNoise=0}] ~ ~ ~ 1000
execute unless data storage luigis_mansion:data current_state.current_data.rooms.conservatory{cleared:1b} run scoreboard players set @s[x=680,y=11,z=4,dx=4,dy=6,dz=39,scores={HallwayNoise=0}] HallwayNoise 850
execute unless entity @s[x=699,y=11,z=32,dx=14,dy=6,dz=4] unless entity @s[x=680,y=11,z=5,dx=4,dy=6,dz=39] run scoreboard players set @s HallwayNoise 0
execute unless entity @s[x=680,y=11,z=4,dx=4,dy=6,dz=39] run stopsound @s ambient luigis_mansion:music.mansion.melody
execute unless data storage luigis_mansion:data current_state.current_data.rooms.dining_room{cleared:1b} if entity @s[x=699,y=11,z=32,dx=14,dy=6,dz=4] at @s run function luigis_mansion:room/hidden/main_hallway/dining_room_noise
