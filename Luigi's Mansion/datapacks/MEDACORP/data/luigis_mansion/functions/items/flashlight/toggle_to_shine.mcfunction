tag @s remove flashlight
tag @s remove flashlight_selected
tag @s[tag=!poltergust_selected,nbt={SelectedItem:{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"flashlight"}}}}] add flashlight_selected
tag @s[tag=flashlight_selected,scores={UseItem=1..},tag=!flashlight_off] add toggle_flashlight_off
tag @s[tag=flashlight_selected,tag=toggle_flashlight_off] add flashlight_off
tag @s[tag=flashlight_selected,scores={UseItem=1..},tag=!toggle_flashlight_off] remove flashlight_off
tag @s[tag=flashlight_selected] remove toggle_flashlight_off
scoreboard players set @s[tag=flashlight_selected,scores={UseItem=1..}] UseItem 0
tag @s[tag=!flashlight_off,tag=!grabbed,tag=!poltergust_selected,tag=dark_room] add flashlight
function luigis_mansion:items/flashlight/shine_direction