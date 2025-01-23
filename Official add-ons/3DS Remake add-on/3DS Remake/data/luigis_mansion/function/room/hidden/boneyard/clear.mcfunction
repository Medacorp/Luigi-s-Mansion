function luigis_mansion:room/hidden/boneyard/turn_on_lights
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"3ds_remake",id:"dog_house"},progress:0,room:28}
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:hidden"},limit=1] add regenerate_map
execute unless entity @s[tag=toad] as @a[scores={Room=28}] run function luigis_mansion:other/music/set/force/exterior
scoreboard players set #room Room 28
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room