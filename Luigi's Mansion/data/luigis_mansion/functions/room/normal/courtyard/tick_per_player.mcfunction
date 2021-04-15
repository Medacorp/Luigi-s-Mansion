execute unless entity @s[scores={MusicType=8}] unless entity @s[scores={MusicType=10}] unless entity @s[scores={MusicType=14}] unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27..30}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/outside
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.courtyard"}
tag @s add seen_room_name


execute unless data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run playsound luigis_mansion:entity.mario.hey_whats_the_hold_up neutral @s[scores={HallwayNoise=0}] 648 101 -3 1
execute unless data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{cleared:1b} run scoreboard players set @s[scores={HallwayNoise=0}] HallwayNoise 120