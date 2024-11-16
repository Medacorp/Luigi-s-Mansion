tag @s[tag=flashlight] remove flashlight
tag @s remove flashlight_selected
tag @s[tag=!poltergust_selected,nbt={SelectedItem:{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}}] add flashlight_selected
scoreboard players set @s[tag=flashlight_selected,scores={UseItem=1..}] UseItem 0
tag @s[tag=!poltergust_selected,tag=dark_room] add flashlight
function luigis_mansion:items/flashlight/shine_direction