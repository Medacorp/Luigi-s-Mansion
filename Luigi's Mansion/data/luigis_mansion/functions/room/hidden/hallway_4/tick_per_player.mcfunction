execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_4{cleared:1b} if entity @s[tag=!blackout] unless entity @s[scores={MusicType=9}] unless entity @s[scores={MusicType=14}] unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27..30}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.hallway_4{cleared:1b} unless entity @s[scores={MusicType=6}] unless entity @s[scores={MusicType=14}] unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27..30}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/hallway
execute if entity @s[tag=blackout] unless entity @s[scores={MusicType=6}] unless entity @s[scores={MusicType=14}] unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27..30}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/hallway

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_4{seen:0b} run function luigis_mansion:room/hidden/hallway_4/set_seen

tag @s[x=718,y=11,z=34,distance=9..10,tag=chance_check] remove chance_check

stopsound @s ambient luigis_mansion:music.mansion.melody
execute unless data storage luigis_mansion:data current_state.current_data.rooms.dining_room{cleared:1b} at @s[tag=!blackout] run function luigis_mansion:room/hidden/hallway_4/dining_room_noise
