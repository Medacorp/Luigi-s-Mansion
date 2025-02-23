execute if entity @e[distance=..25,tag=luigi,limit=1] run tag @s add walk
execute unless entity @e[distance=..40,tag=luigi,limit=1] if entity @e[distance=40..,tag=luigi,limit=1] run tag @s add jump
tag @s[tag=!walk,tag=!jump] add run