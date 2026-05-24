execute if data entity @s data.warp_options[-1] run function luigis_mansion:entities/boo/direction/pick_path
execute if data entity @s data.warp_options[-1] run return 0
$function $(namespace):entities/boo/direction/mansion/$(id)
data modify storage luigis_mansion:data temp set from entity @s data.warp_options
data modify entity @s data.warp_options set value []
execute if data storage luigis_mansion:data temp[-1] run function luigis_mansion:entities/boo/direction/check_condition with storage luigis_mansion:data temp[-1]
function luigis_mansion:entities/boo/direction/pick_path