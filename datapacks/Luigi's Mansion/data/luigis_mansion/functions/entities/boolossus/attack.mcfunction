scoreboard players add @s Boos 1
execute at @s[scores={Boos=1..20}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Boos=1}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Boos=1}] AnimationProg 0
execute at @s[scores={Boos=1..19}] run function luigis_mansion:animations/boo/laugh
scoreboard players set @s[scores={Boos=20}] AnimationProg 0
execute at @s[scores={Boos=20..}] run function luigis_mansion:animations/boo/attack
scoreboard players set @s[scores={Boos=20..}] Move 9
execute at @s[scores={Boos=20..}] run function luigis_mansion:entities/boo/move_forward
teleport @s[tag=wall] ~ ~ ~ ~ ~
scoreboard players set @s[tag=wall] Time 40
tag @s remove wall
scoreboard players set @s[scores={Boos=40}] Move 3
scoreboard players set @s[scores={Boos=40}] AnimationProg 0
tag @s[scores={Boos=40}] remove attack
scoreboard players reset @s[scores={Boos=40}] Boos