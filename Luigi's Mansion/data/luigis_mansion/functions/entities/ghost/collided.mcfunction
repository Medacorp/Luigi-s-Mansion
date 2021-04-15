scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=10},tag=garbage_can_ghost] add vanish
tag @s[scores={ActionTime=10}] remove collided
scoreboard players reset @s[scores={ActionTime=10}] ActionTime