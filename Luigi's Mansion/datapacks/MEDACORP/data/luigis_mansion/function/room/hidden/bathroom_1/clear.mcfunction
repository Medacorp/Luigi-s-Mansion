function luigis_mansion:room/hidden/bathroom_1/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:hidden"},limit=1] add regenerate_map
execute as @a unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27}] run function luigis_mansion:other/music/set/force/game_boy_horror
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"grabbing_ghosts"},progress:0}
scoreboard players set #room Room 16
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room