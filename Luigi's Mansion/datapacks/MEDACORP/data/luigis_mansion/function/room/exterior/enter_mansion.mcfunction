function luigis_mansion:items/poltergust_3000/remove_element
execute if entity @s[tag=stop_model] run function luigis_mansion:entities/player/back_to_model
function luigis_mansion:entities/player/animation/set/none
$function $(namespace):room/$(id)/enter