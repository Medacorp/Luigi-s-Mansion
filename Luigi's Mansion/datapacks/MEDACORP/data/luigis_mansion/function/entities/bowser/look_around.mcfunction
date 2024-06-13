scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"look_around"}
tag @s[scores={ActionTime=40}] remove look_around
tag @s[scores={ActionTime=40}] add turn_around
data remove entity @s[scores={ActionTime=40}] data.animation
scoreboard players reset @s[scores={ActionTime=40}] ActionTime