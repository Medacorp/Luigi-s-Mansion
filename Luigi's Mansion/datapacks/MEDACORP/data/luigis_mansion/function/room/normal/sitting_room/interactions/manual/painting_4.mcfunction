tag @s[x=747.0,y=22,z=-30.0,dx=0,dy=0,dz=1,tag=check] add can_interact
execute if entity @s[x=747.0,y=22,z=-30.0,dx=0,dy=0,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_generic
execute if entity @s[x=747.0,y=22,z=-30.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run scoreboard players operation #sitting_room_painting_4 SearcherID = #temp ID
execute if entity @s[x=747.0,y=22,z=-30.0,dx=0,dy=0,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/sitting_room/search/boo_check/painting_4