execute at @s facing entity @e[tag=bowser_body,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!fleeing,tag=!boo_hurt] if score #temp Move matches 1.. run function luigis_mansion:entities/king_boo/move_back
scoreboard players operation #temp Health = @s Health
scoreboard players operation #temp Health *= #2 Constants
execute if score #temp Health <= @s MaxHealth if entity @e[tag=bowser_body,distance=..2,limit=1] run tag @e[tag=bowser,limit=1] add headless_run
execute if entity @e[tag=bowser_body,distance=..2,limit=1] run scoreboard players reset @e[tag=bowser,limit=1] ActionTime
execute if entity @e[tag=bowser_body,distance=..2,limit=1] run tag @s add vanish
execute at @e[tag=bowser_body,distance=..2,limit=1] run teleport @e[tag=bowser,limit=1] ~ ~ ~ ~ ~
execute if score #temp Health <= @s MaxHealth positioned ~ ~-4 ~ if entity @e[tag=bowser_body,distance=..2,limit=1] run tag @e[tag=bowser,limit=1] add headless_run
execute positioned ~ ~-4 ~ if entity @e[tag=bowser_body,distance=..2,limit=1] run scoreboard players reset @e[tag=bowser,limit=1] ActionTime
execute positioned ~ ~-4 ~ if entity @e[tag=bowser_body,distance=..2,limit=1] run tag @s add vanish
execute positioned ~ ~-4 ~ at @e[tag=bowser_body,distance=..2,limit=1] run teleport @e[tag=bowser,limit=1] ~ ~ ~ ~ ~
scoreboard players reset #temp Health