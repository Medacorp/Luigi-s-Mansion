tag @s[x=675.0,y=11,z=43.0,dx=1,dy=3,dz=1,tag=check] add can_interact
execute if entity @s[x=675.0,y=11,z=43.0,dx=1,dy=3,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=675.0,y=11,z=43.0,dx=1,dy=3,dz=1,tag=!sound,tag=!check] run scoreboard players operation #projection_room_speaker_1 SearcherID = #temp ID
execute if entity @s[x=675.0,y=11,z=43.0,dx=1,dy=3,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/projection_room/search/boo_check/speaker_1