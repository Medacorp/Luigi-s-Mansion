function luigis_mansion:room/normal/the_artists_studio/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
tag @e[scores={Room=71},tag=furniture,tag=door] remove blockade
execute unless entity @s[tag=toad] as @a[scores={Room=71}] run function luigis_mansion:other/music/set/force/light
scoreboard players set #room Room 71
function luigis_mansion:other/music/play/group_0/cleared_room
scoreboard players reset #room Room