execute at @s facing entity @e[tag=bowser_body,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!fleeing,tag=!boo_hurt] if score #temp Move matches 1.. run function luigis_mansion:entities/king_boo/move_back
execute at @s[scores={Health=..25000}] if entity @e[tag=bowser_body,distance=..2,limit=1] run tag @e[tag=bowser,limit=1] add reattach_head_backwards
execute at @s if entity @e[tag=bowser_body,distance=..2,limit=1] run scoreboard players reset @e[tag=bowser,limit=1] ActionTime
execute at @s if entity @e[tag=bowser_body,distance=..2,limit=1] run tag @s add vanish
execute at @s if entity @e[tag=bowser_body,distance=..2,limit=1] run tag @e[tag=bowser,tag=!reattach_head_backwards,limit=1] add reattach_head