execute unless entity @s[scores={MusicGroup=0,MusicType=8}] unless entity @s[scores={MusicGroup=0,MusicType=10}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] run function luigis_mansion:other/music/set/outside
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.courtyard"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.courtyard{seen:0b} run function luigis_mansion:room/normal/courtyard/set_seen

execute unless data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run playsound luigis_mansion:entity.mario.hey_whats_the_hold_up neutral @s[scores={RoomNoise=0}] 648 101 -3 1
execute unless data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run scoreboard players set @s[scores={RoomNoise=0}] RoomNoise 120