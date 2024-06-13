tag @e[scores={Room=65},tag=furniture,tag=door] remove blockade
data modify storage luigis_mansion:data current_state.current_data.rooms.ceramics_studio merge value {cleared:1b}
tag @a[tag=looking_at_map,nbt={Dimension:"luigis_mansion:normal"},limit=1] add regenerate_map
scoreboard players set #ceramics_studio Wave 101