execute at @e[tag=king_boo,limit=1] run tag @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] add target
scoreboard players set #temp Move 10
execute at @s facing entity @a[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s unless entity @a[tag=target,limit=1,distance=..8] run function luigis_mansion:entities/bowser/move_forward
scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=20}] run function luigis_mansion:entities/bowser/spit_ice
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0