execute unless entity @s[scores={MusicType=1}] unless entity @s[scores={MusicType=10}] unless entity @s[scores={MusicType=14}] unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27..30}] unless entity @s[scores={MusicType=-1}] run function luigis_mansion:other/music/set/foyer
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.foyer"}
tag @s add seen_room_name
scoreboard players set @s[scores={PrevRoom=2}] PrevRoom 1

execute if data storage luigis_mansion:data current_state.current_data.rooms.foyer{seen:0b} run function luigis_mansion:room/hidden/foyer/set_seen

execute if entity @s[x=745.5,y=11,z=7.0,distance=..4] if data storage luigis_mansion:data current_state.current_data.obtained_keys{hallway_3:1b} run function luigis_mansion:room/hidden/foyer/clear_blockade

execute if entity @s[x=751.0,y=11,z=7.0,distance=..3,tag=!chance_check] unless entity @a[x=751.0,y=11,z=7.0,distance=..3,tag=scanning,limit=1] unless entity @a[tag=warp,limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.nursery{cleared:0b} unless entity @e[x=751.0,y=11,z=7.0,distance=..3,tag=chandelier,type=minecraft:marker,limit=1] run function luigis_mansion:room/hidden/foyer/falling_chandelier
tag @s[x=751.0,y=11,z=7.0,distance=4..5,tag=chance_check] remove chance_check