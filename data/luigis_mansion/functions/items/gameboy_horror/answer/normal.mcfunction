execute if entity @s[scores={GBHCall=1}] unless entity @s[scores={GBHWait=1200}] run function luigis_mansion:dialog/portrait_ghosts/normal
execute if entity @s[scores={GBHCall=2}] unless entity @s[scores={GBHWait=1200}] run function luigis_mansion:dialog/area_1_key/normal
execute if entity @s[scores={GBHCall=3}] unless entity @s[scores={GBHWait=1200}] run function luigis_mansion:dialog/grabbing_ghosts/normal
execute if entity @s[scores={GBHCall=4}] unless entity @s[scores={GBHWait=1200}] run function luigis_mansion:dialog/released_boos/call/normal
execute if entity @s[scores={GBHCall=5}] unless entity @s[scores={GBHWait=1200}] run function luigis_mansion:dialog/caught_boo/normal
execute if entity @s[scores={GBHCall=6}] unless entity @s[scores={GBHWait=1200}] run function luigis_mansion:dialog/fire_element_medal/normal
execute if entity @s[scores={GBHCall=7}] unless entity @s[scores={GBHWait=1200}] run function luigis_mansion:dialog/water_element_medal/normal
execute if entity @s[scores={GBHCall=8}] unless entity @s[scores={GBHWait=1200}] run function luigis_mansion:dialog/area_2_key/normal
execute if entity @s[scores={GBHCall=9}] unless entity @s[scores={GBHWait=1200}] run function luigis_mansion:dialog/ice_element_medal/normal
execute if entity @s[scores={GBHCall=10}] unless entity @s[scores={GBHWait=1200}] run function luigis_mansion:dialog/area_3_key/normal
execute if entity @s[scores={GBHCall=11}] unless entity @s[scores={GBHWait=1200}] run function luigis_mansion:dialog/blackout/normal
execute if entity @s[scores={GBHCall=12}] unless entity @s[scores={GBHWait=1200}] run function luigis_mansion:dialog/caught_king_boo/normal
scoreboard players set @s[tag=hang_up] GBHWait 1200
execute if entity @s[scores={GBHWait=1200}] run function luigis_mansion:items/gameboy_horror/answer/text/normal