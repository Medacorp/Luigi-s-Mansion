execute if entity @a[distance=..15,tag=!spectator] run tag @s add walk
execute unless entity @a[distance=..25,tag=!spectator] if entity @a[distance=25..,tag=!spectator] run tag @s add jump
tag @s[tag=!walk,tag=!jump] add run