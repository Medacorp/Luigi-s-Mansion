tag @s[tag=spawn] add visible
execute if entity @s[tag=spawn] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[tag=spawn] as @a[tag=same_room,scores={Music=..30}] unless entity @s[scores={HealthMusic=1..}] unless entity @s[scores={GradualMusic=1..}] run scoreboard players set @s Music 30
tag @s[tag=spawn] remove spawn