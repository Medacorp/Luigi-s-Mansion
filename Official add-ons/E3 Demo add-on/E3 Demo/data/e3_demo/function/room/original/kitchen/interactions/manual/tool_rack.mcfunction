tag @s[x=698.0,y=14,z=84.0,dx=0,dy=2,dz=2,tag=check] add can_interact
execute if entity @s[x=698.0,y=14,z=84.0,dx=0,dy=2,dz=2,tag=sound] run function luigis_mansion:blocks/search_sound/ceramic
execute if entity @s[x=698.0,y=14,z=84.0,dx=0,dy=2,dz=2,tag=!sound,tag=!check] run scoreboard players operation #kitchen_tool_rack SearcherID = #temp ID
execute if entity @s[x=698.0,y=14,z=84.0,dx=0,dy=2,dz=2,tag=!sound,tag=!check] run function e3_demo:room/original/kitchen/search/tool_rack