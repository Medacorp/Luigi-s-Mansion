execute store result score #temp Room run scoreboard players get @s Room
execute as @e[tag=furniture,tag=can_hide_boo] at @s unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] if score @s Room = #temp Room run tag @s add hide_option
execute at @e[tag=hide_option,limit=1,sort=random] run teleport @s ~ ~ ~
execute at @s if entity @e[distance=..0.1,tag=hide_option,limit=1] run tag @s add caught_by_boo_radar
execute at @s[tag=caught_by_boo_radar,tag=can_play_sound] run playsound luigis_mansion:entity.boo.hide hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=caught_by_boo_radar] HideTime 600
tag @e[tag=hide_option] remove hide_option
scoreboard players reset #temp Room