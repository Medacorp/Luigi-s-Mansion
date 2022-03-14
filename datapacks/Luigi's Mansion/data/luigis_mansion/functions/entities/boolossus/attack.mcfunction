execute unless entity @s[scores={Boos=1..}] run scoreboard players set @s Sound 0
execute unless entity @s[scores={Boos=1..}] run scoreboard players set @s AnimationProg 0
scoreboard players operation #temp Time = @s MaxHealth
scoreboard players operation #temp Time -= @s Time
execute unless entity @s[scores={Boos=1000..}] run scoreboard players operation @s Boos += #temp Time
execute unless entity @s[scores={Boos=1000..}] run scoreboard players operation @s Boos += #temp Time
execute unless entity @s[scores={Boos=1000..}] run scoreboard players operation @s Boos += #temp Time
execute unless entity @s[scores={Boos=1000..}] run scoreboard players add @s Boos 14
scoreboard players set @s[scores={Boos=560..}] Boos 1000
execute at @s[scores={Boos=1..1000}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Boos=1..999,Sound=0}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Boos=1..999,Sound=0}] Sound 20
execute at @s[scores={Boos=1..999}] run function luigis_mansion:animations/boo/laugh
scoreboard players set @s[scores={Boos=1000}] AnimationProg 0
execute if entity @s[scores={Boos=1000}] run stopsound @a[tag=same_room] hostile luigis_mansion:entity.boo.laugh
scoreboard players add @s[scores={Boos=1000..}] Boos 1
execute at @s[scores={Boos=1000..}] run function luigis_mansion:animations/boo/attack
scoreboard players operation #temp Move = @s Move
scoreboard players operation #temp Move *= #3 Constants
execute at @s[scores={Boos=1000..}] run function luigis_mansion:entities/boo/move_forward
teleport @s[tag=wall] ~ ~ ~ ~ ~
scoreboard players set @s[tag=wall] Time 1020
tag @s remove wall
scoreboard players set @s[scores={Boos=1020}] AnimationProg 0
tag @s[scores={Boos=1020}] remove attack
scoreboard players reset @s[scores={Boos=1020}] Boos
scoreboard players reset #temp Time