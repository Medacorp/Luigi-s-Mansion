tag @s remove disappear
tag @s[tag=!show_health] remove in_vacuum
tag @s[tag=!show_health] remove in_fire
tag @s[tag=!show_health] remove in_water
tag @s[tag=!show_health] remove in_ice
tag @s[tag=!show_health] remove in_dust
execute if entity @s[tag=!dying] run function luigis_mansion:entities/king_boo/ai/tick with entity @s data.mansion
execute if entity @s[tag=!dying] unless entity @s[tag=!in_vacuum,tag=!flee] run function luigis_mansion:entities/king_boo/ai/hurt
tag @s remove is_pulled

function luigis_mansion:entities/ghost/ai
tag @s remove flee

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying] run function luigis_mansion:entities/king_boo/ambient_sound

execute if entity @s[tag=dead] run function luigis_mansion:entities/king_boo/at_death with entity @s data.mansion