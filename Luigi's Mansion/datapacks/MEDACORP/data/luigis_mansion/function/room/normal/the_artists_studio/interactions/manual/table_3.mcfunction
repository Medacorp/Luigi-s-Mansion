tag @s[x=692.0,y=29,z=-76.0,dx=5,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=692.0,y=29,z=-76.0,dx=5,dy=2,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=692.0,y=29,z=-76.0,dx=5,dy=2,dz=2,tag=!sound,tag=!check] run scoreboard players operation #the_artists_studio_table_3 SearcherID = #temp ID
execute if entity @s[x=692.0,y=29,z=-76.0,dx=5,dy=2,dz=2,tag=!sound,tag=!check] run function luigis_mansion:room/normal/the_artists_studio/search/boo_check/table_3