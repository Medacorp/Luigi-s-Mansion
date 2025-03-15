execute unless entity @s[scores={MusicGroup=0,MusicType=0}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27}] unless entity @s[scores={MusicGroup=0,MusicType=31}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] run function luigis_mansion:other/music/set/silence
title @s[tag=!seen_room_name,tag=!fully_separated_camera] title {type:"translatable",translate:"luigis_mansion:location.secret_altar"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.secret_altar{seen:0b} if entity @s[tag=!spectator,tag=!fully_separated_camera] run function luigis_mansion:room/hidden/secret_altar/set_seen

execute unless entity @s[tag=!wall_warp,tag=!spectator] if entity @s[tag=!already_ticked] run function luigis_mansion:room/hidden/secret_altar/wall_warp

tag @s add already_ticked