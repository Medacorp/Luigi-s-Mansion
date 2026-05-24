$function $(namespace):entities/boo/countdown_warp/mansion/$(id)
data modify storage luigis_mansion:data room merge from entity @s data.mansion
execute store result storage luigis_mansion:data room.room int 1 run scoreboard players get @s Room
function luigis_mansion:entities/boo/countdown_warp/check_room with storage luigis_mansion:data room
$execute if entity @s[tag=!can_hide] run function $(namespace):entities/boo/warp/$(id)
data remove storage luigis_mansion:data room
execute if entity @s[tag=transform_to_hidden_boo] run function luigis_mansion:entities/boo/hide
tag @s[tag=can_hide] add remove_from_existence
tag @s[tag=can_hide] remove cannot_be_removed
tag @s[tag=can_hide] add warped