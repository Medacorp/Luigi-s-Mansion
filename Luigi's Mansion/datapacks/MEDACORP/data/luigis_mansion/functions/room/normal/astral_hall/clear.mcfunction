function luigis_mansion:room/normal/astral_hall/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
tag @e[scores={Room=45},tag=furniture,tag=door] remove blockade
data remove entity @e[x=666.5,y=20.0,z=-92.0,distance=..0.7,tag=furniture,tag=door,limit=1] ArmorItems[3].tag.go_through_command
data modify entity @e[x=666.5,y=20.0,z=-92.0,distance=..0.7,tag=furniture,tag=door,limit=1] ArmorItems[3].tag.other_end set value {x:645,y:20,z:-73}
execute as @a[scores={Room=45}] run function luigis_mansion:other/music/set/light
scoreboard players set #room Room 45
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room