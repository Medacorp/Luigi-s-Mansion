function 3ds_remake:room/hidden/astral_hall/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
tag @e[scores={Room=45},tag=furniture,tag=door] remove blockade
data remove entity @e[x=666.5,y=20.0,z=-91.0,distance=..0.7,tag=furniture,tag=door,limit=1] ArmorItems[3].components."minecraft:custom_data".go_through_command
data modify entity @e[x=666.5,y=20.0,z=-91.0,distance=..0.7,tag=furniture,tag=door,limit=1] ArmorItems[3].components."minecraft:custom_data".other_end set value {x:645,y:20,z:-73}
execute unless entity @s[tag=toad] as @a[scores={Room=45}] run function luigis_mansion:other/music/set/force/light
scoreboard players set #room Room 45
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room