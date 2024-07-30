tag @s[x=736.0,y=2,z=-35.0,dx=2,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=736.0,y=2,z=-35.0,dx=2,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=736.0,y=2,z=-35.0,dx=2,dy=1,dz=1,tag=!sound,tag=!check] run scoreboard players operation #gallery_table SearcherID = #temp ID
execute if entity @s[x=736.0,y=2,z=-35.0,dx=2,dy=1,dz=1,tag=!sound,tag=!check] run function 3ds_remake:room/gallery/search/table