function luigis_mansion:room/normal/bathroom_1/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
execute as @a unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27}] run function luigis_mansion:other/music/set/game_boy_horror_calling
scoreboard players set @a GBHCall 3
scoreboard players set #room Room 16
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room