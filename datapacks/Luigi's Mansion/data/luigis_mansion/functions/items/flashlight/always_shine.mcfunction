tag @s[tag=flashlight] remove flashlight
tag @s remove flashlight_selected
tag @s[tag=!poltergust_selected,nbt={SelectedItem:{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}}] add flashlight_selected
scoreboard players set @s[tag=flashlight_selected,scores={UseItem=1..}] UseItem 0
tag @s[tag=!grabbed,tag=!gameboy_horror_selected,tag=!poltergust_selected,tag=dark_room] add flashlight
function luigis_mansion:items/flashlight/shine_direction
tag @s[tag=!flashlight,tag=had_flashlight_on] remove had_flashlight_on
tag @s[tag=flashlight,tag=!had_flashlight_on] add had_flashlight_on