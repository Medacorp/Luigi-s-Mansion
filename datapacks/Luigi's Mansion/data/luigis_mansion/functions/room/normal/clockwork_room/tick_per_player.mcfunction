execute if data storage luigis_mansion:data current_state.current_data.rooms.clockwork_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data{blackout:0b} unless entity @s[scores={MusicGroup=0,MusicType=9}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] run function luigis_mansion:other/music/set/light
execute unless data storage luigis_mansion:data current_state.current_data.rooms.clockwork_room{cleared:1b} unless entity @s[scores={MusicGroup=0,MusicType=7}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] run function luigis_mansion:other/music/set/room
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} unless entity @s[scores={MusicGroup=0,MusicType=7}] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] unless entity @s[scores={MusicGroup=0,MusicType=-1}] run function luigis_mansion:other/music/set/room
title @s[tag=!seen_room_name] title {"translate":"luigis_mansion:location.clockwork_room"}
tag @s add seen_room_name

execute if data storage luigis_mansion:data current_state.current_data.rooms.clockwork_room{seen:0b} run function luigis_mansion:room/normal/clockwork_room/set_seen

execute if score #clockwork_room_clock_1 Searched matches 1.. if entity @s[scores={Time=0}] run particle minecraft:note 684 121 22 0 0 0 1 1 normal @s
execute if score #clockwork_room_clock_2 Searched matches 1.. if entity @s[scores={Time=0}] run particle minecraft:note 693 122 18.0 0 0 0 1 1 normal @s
execute if score #clockwork_room_clock_3 Searched matches 1.. if entity @s[scores={Time=0}] run particle minecraft:note 684 121 -7 0 0 0 1 1 normal @s
execute unless entity @s[scores={Time=1..}] run scoreboard players set @s Time 7
scoreboard players remove @s[scores={Time=1..}] Time 1