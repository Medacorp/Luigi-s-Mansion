scoreboard players remove @s ElementMeter 1
function luigis_mansion:items/poltergust_3000/sync_element_meter
execute if entity @s[scores={ElementMeter=..0}] run function luigis_mansion:items/poltergust_3000/no_element