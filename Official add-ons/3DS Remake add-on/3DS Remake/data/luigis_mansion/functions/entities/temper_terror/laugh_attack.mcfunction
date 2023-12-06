scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.temper_terror.laugh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
scoreboard players set @s Move 5
execute at @s run function luigis_mansion:old_animations/ghost/normal/laugh
tag @s[scores={ActionTime=40}] add vanish
tag @s[scores={ActionTime=40}] remove attack
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0
execute at @s facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s positioned ^ ^ ^0.7 unless entity @a[distance=..0.7,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/ghost/move