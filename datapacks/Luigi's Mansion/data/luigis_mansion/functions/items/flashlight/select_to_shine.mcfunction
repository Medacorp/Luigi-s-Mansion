tag @s remove flashlight
tag @s remove flashlight_selected
tag @s[tag=!grabbed,nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}}] add flashlight_selected
tag @s[tag=!flashlight_selected] remove flashlight_off
tag @s[tag=flashlight_selected,scores={UseItem=1},tag=!flashlight_off] add toggle_flashlight_off
tag @s[tag=flashlight_selected,tag=toggle_flashlight_off] add flashlight_off
scoreboard players set @s[tag=flashlight_selected,tag=toggle_flashlight_off] UseItem 0
tag @s[tag=flashlight_selected,tag=toggle_flashlight_off] remove toggle_flashlight_off
tag @s[tag=flashlight_selected,scores={UseItem=1},tag=flashlight_off] remove flashlight_off
scoreboard players set @s[tag=flashlight_selected,scores={UseItem=1}] UseItem 0
tag @s[tag=flashlight_selected,tag=!flashlight_off,tag=dark_room] add flashlight
function #luigis_mansion:items/flashlight/effects
tag @s[tag=!flashlight,tag=had_flashlight_on] remove had_flashlight_on
tag @s[tag=flashlight,tag=!had_flashlight_on] add had_flashlight_on