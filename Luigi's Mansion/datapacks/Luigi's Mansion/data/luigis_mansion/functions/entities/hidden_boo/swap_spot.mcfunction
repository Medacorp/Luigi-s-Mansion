execute store result score #temp Room run scoreboard players get @s Room
execute as @e[tag=furniture,tag=same_room,tag=can_hide_boo] if score @s Room = #temp Room at @s positioned ~ ~1.4 ~ unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] run tag @s add hide_option
# todelete
function #luigis_mansion:entities/hidden_boo/swap_spot
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..0.1,tag=caught_by_boo_radar,limit=1] run kill @s
# /todelete
execute at @e[tag=hide_option,limit=1,sort=random] run teleport @s ~ ~ ~
execute at @s if entity @e[tag=hide_option,tag=furniture,distance=..0.1,limit=1] run teleport @s ~ ~1.4 ~
execute at @s if entity @e[distance=..0.1,tag=hide_option,limit=1] run tag @s add caught_by_boo_radar
execute at @s[tag=caught_by_boo_radar,tag=can_play_sound] run playsound luigis_mansion:entity.boo.hide hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=caught_by_boo_radar] HideTime 600
# todelete
kill @e[type=minecraft:marker,tag=choice]
# /todelete
tag @e[tag=hide_option] remove hide_option
scoreboard players reset #temp Room