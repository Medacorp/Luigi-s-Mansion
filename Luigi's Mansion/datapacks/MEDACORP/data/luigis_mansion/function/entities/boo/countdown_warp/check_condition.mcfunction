$execute $(condition) run data modify storage luigis_mansion:data warp_options append from storage luigis_mansion:data temp[-1]
data remove storage luigis_mansion:data temp[-1]
execute if data storage luigis_mansion:data temp[-1] run function luigis_mansion:entities/boo/countdown_warp/check_condition with storage luigis_mansion:data temp[-1]