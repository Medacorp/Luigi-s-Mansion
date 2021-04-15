scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
function luigis_mansion:animations/bowling_ghost/idle
execute if entity @s[scores={ActionTime=1}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.2 ^0.4
execute if entity @s[scores={ActionTime=2}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.3 ^0.4
execute if entity @s[scores={ActionTime=3}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.4 ^0.4
execute if entity @s[scores={ActionTime=4}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.5 ^0.4
execute if entity @s[scores={ActionTime=5}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.6 ^0.4
execute if entity @s[scores={ActionTime=6}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.7 ^0.4
execute if entity @s[scores={ActionTime=7}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.8 ^0.4
execute if entity @s[scores={ActionTime=8}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.9 ^0.4
execute if entity @s[scores={ActionTime=9}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^1 ^0.4
execute if entity @s[scores={ActionTime=10}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^1.1 ^0.4
execute if entity @s[scores={ActionTime=11}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^1.1 ^0.4
execute if entity @s[scores={ActionTime=12}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^1 ^0.4
execute if entity @s[scores={ActionTime=13}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.9 ^0.4
execute if entity @s[scores={ActionTime=14}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.8 ^0.4
execute if entity @s[scores={ActionTime=15}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.7 ^0.4
execute if entity @s[scores={ActionTime=16}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.6 ^0.4
execute if entity @s[scores={ActionTime=17}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.5 ^0.4
execute if entity @s[scores={ActionTime=18}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.4 ^0.4
execute if entity @s[scores={ActionTime=19}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.3 ^0.4
execute if entity @s[scores={ActionTime=20}] run teleport @e[tag=this_bowling_ball,limit=1] ^0.3 ^0.2 ^0.4
tag @s add was_idle
scoreboard players set @s[scores={ActionTime=20}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0