tag @s[x=663.0,y=20,z=-31.0,dx=2,dy=4,dz=1,tag=check] add can_interact
execute if entity @s[x=663.0,y=20,z=-31.0,dx=2,dy=4,dz=1,tag=sound] run function luigis_mansion:blocks/search_sound/heavy_metal
execute if entity @s[x=663.0,y=20,z=-31.0,dx=2,dy=4,dz=1,tag=!sound,tag=!check] run scoreboard players operation #washroom_2_toilet_storage SearcherID = #temp ID
execute if entity @s[x=663.0,y=20,z=-31.0,dx=2,dy=4,dz=1,tag=!sound,tag=!check] run function luigis_mansion:room/hidden/washroom_2/search/boo_check/toilet_storage