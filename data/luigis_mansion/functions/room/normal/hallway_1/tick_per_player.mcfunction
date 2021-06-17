execute unless entity @s[scores={MusicGroup=0,MusicType=1}] unless entity @s[scores={MusicGroup=0,MusicType=10}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] run function luigis_mansion:other/music/set/foyer
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.foyer"}
tag @s add seen_room_name
scoreboard players set @s[scores={PrevRoom=1}] PrevRoom 2

execute if data storage luigis_mansion:data current_state.current_data.rooms.hallway_1{seen:0b} run function luigis_mansion:room/normal/hallway_1/set_seen

execute if entity @s[x=739.5,y=20,z=15.5,distance=..3] if data storage luigis_mansion:data current_state.current_data.rooms.wardrobe_room{cleared:1b} unless data storage luigis_mansion:data current_state.current_data.technical_data{portrait_ghosts:1b} run scoreboard players set @a GBHCall 1