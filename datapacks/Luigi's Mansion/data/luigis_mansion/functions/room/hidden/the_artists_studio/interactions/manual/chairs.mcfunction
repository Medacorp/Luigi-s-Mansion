tag @s[x=702.5,y=29,z=72.5,distance=..0.7,tag=check] add can_interact
execute if entity @s[x=702.5,y=29,z=72.5,distance=..0.7,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=702.5,y=29,z=72.5,distance=..0.7,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/the_artists_studio/search/boo_check/chairs