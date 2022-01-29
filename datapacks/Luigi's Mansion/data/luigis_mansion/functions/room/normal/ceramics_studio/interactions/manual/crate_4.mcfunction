tag @s[x=706.0,y=29,z=77.0,dx=1,dy=1,dz=1,tag=check] add can_interact
execute if entity @s[x=706.0,y=29,z=77.0,dx=1,dy=1,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/generic
execute if entity @s[x=706.0,y=29,z=77.0,dx=1,dy=1,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/normal/ceramics_studio/search/crate_4