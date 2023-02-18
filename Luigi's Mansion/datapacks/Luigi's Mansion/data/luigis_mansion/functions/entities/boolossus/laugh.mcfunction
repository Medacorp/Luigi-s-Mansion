scoreboard players add @s Boos 1
execute if entity @s[scores={Boos=1}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Boos=21}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Boos=41}] run playsound luigis_mansion:entity.boo.flinch hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Boos=51}] run playsound luigis_mansion:entity.boo.taunt hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Boos=61}] run playsound luigis_mansion:entity.boo.taunt hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Boos=71}] run playsound luigis_mansion:entity.boo.taunt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Boos=1}] AnimationProgress 0
execute at @s[scores={Boos=1..40}] run function luigis_mansion:animations/boo/laugh
execute at @s[scores={Boos=41..80}] run function luigis_mansion:animations/boo/taunt
tag @s[scores={Boos=80}] remove laugh
scoreboard players set @s[scores={Boos=80}] AnimationProgress 0
scoreboard players set @s[scores={Boos=80}] Boos 0