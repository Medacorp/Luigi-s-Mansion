function 3ds_remake:room/hidden/astral_hall/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
tag @e[scores={Room=45},tag=furniture,tag=door] remove blockade
execute unless entity @s[tag=toad] as @a[scores={Room=45}] run function luigis_mansion:other/music/set/force/lit_room
scoreboard players set #room Room 45
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room