scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.grabbing_ghost.laugh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/grabbing_ghost/laugh
execute at @s run teleport @s[scores={ActionTime=1}] ~ ~ ~ ~18 ~
execute at @s run teleport @s[scores={ActionTime=2}] ~ ~ ~ ~36 ~
execute at @s run teleport @s[scores={ActionTime=3}] ~ ~ ~ ~54 ~
execute at @s run teleport @s[scores={ActionTime=4}] ~ ~ ~ ~72 ~
execute at @s run teleport @s[scores={ActionTime=5}] ~ ~ ~ ~90 ~
execute at @s run teleport @s[scores={ActionTime=6}] ~ ~ ~ ~108 ~
execute at @s run teleport @s[scores={ActionTime=7}] ~ ~ ~ ~126 ~
execute at @s run teleport @s[scores={ActionTime=8}] ~ ~ ~ ~144 ~
execute at @s run teleport @s[scores={ActionTime=9}] ~ ~ ~ ~162 ~
execute at @s run teleport @s[scores={ActionTime=10}] ~ ~ ~ ~180 ~
execute at @s run teleport @s[scores={ActionTime=11}] ~ ~ ~ ~198 ~
execute at @s run teleport @s[scores={ActionTime=12}] ~ ~ ~ ~216 ~
execute at @s run teleport @s[scores={ActionTime=13}] ~ ~ ~ ~234 ~
execute at @s run teleport @s[scores={ActionTime=14}] ~ ~ ~ ~252 ~
execute at @s run teleport @s[scores={ActionTime=15}] ~ ~ ~ ~270 ~
execute at @s run teleport @s[scores={ActionTime=16}] ~ ~ ~ ~288 ~
execute at @s run teleport @s[scores={ActionTime=17}] ~ ~ ~ ~306 ~
execute at @s run teleport @s[scores={ActionTime=18}] ~ ~ ~ ~324 ~
execute at @s run teleport @s[scores={ActionTime=19}] ~ ~ ~ ~342 ~
tag @s[scores={ActionTime=40}] remove laugh
tag @s[scores={ActionTime=40}] add vanish
scoreboard players set @s[scores={ActionTime=40}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0