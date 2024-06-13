function luigis_mansion:entities/ghost/get_target
function luigis_mansion:entities/ghost/ai

function luigis_mansion:entities/bowser/find_body with entity @s data

$execute if entity @s[tag=!decapitate,tag=!reattach,tag=!reattach_backwards,tag=!dying] run function $(namespace):entities/bowser_head/ai/$(id)

execute if entity @s[tag=decapitate] run function luigis_mansion:entities/bowser_head/decapitate
execute if entity @s[tag=reattach] run function luigis_mansion:entities/bowser_head/reattach
execute if entity @s[tag=reattach_backwards] run function luigis_mansion:entities/bowser_head/reattach_backwards
execute if entity @s[tag=dying] run function luigis_mansion:entities/bowser_head/death

tag @e[tag=this_body,limit=1] remove this_body