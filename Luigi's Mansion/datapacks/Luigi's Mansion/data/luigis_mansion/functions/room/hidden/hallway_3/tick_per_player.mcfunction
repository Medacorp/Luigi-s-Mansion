execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_3{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless entity @s[x=686,y=11,z=30,dx=26,dy=6,dz=8] run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_3{cleared:1b} unless entity @s[x=686,y=11,z=30,dx=26,dy=6,dz=8] run function luigis_mansion:other/music/set/hallway
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless entity @s[x=686,y=11,z=30,dx=26,dy=6,dz=8] run function luigis_mansion:other/music/set/hallway
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_3{seen:0b} run function luigis_mansion:room/hidden/hallway_3/set_seen

execute if entity @s[x=718,y=11,z=34,distance=..9,tag=!chance_check] if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_3{cleared:1b} unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hallway_3_hallway_6_gold_mouse"]} unless entity @e[tag=gold_mouse,scores={Room=10..14},limit=1] run function luigis_mansion:room/hidden/hallway_3/gold_mouse
execute if entity @s[x=718,y=11,z=34,distance=..9,tag=!chance_check] if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hallway_3_hallway_6_gold_mouse"]} unless entity @e[tag=gold_mouse,scores={Room=10..14},limit=1] run function luigis_mansion:room/hidden/hallway_3/gold_mouse
tag @s[x=718,y=11,z=34,distance=9..10,tag=chance_check] remove chance_check

scoreboard players set @s RoomNoise 0