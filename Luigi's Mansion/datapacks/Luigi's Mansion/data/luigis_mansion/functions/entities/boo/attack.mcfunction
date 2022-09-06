scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/boo/attack
execute at @s[scores={ActionTime=1}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s run function luigis_mansion:entities/boo/move_forward
execute at @s[tag=wall] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[tag=wall] ActionTime 20
tag @s remove wall
tag @s remove rotated
tag @s[scores={ActionTime=20}] remove attack
scoreboard players reset @s[scores={ActionTime=20}] ActionTime