scoreboard players add @s Dialog 1
teleport @s[scores={Dialog=1..219}] ~ ~ ~ facing entity @p[gamemode=!spectator]
tag @s[scores={Dialog=1}] add wave
tag @s[scores={Dialog=220}] remove wave
tag @s[scores={Dialog=220}] add walk
teleport @s[scores={Dialog=220..259}] ~ ~ ~0.1 0 0
execute if entity @s[scores={Dialog=220}] run fill 789 90 16 789 91 16 minecraft:air
execute if entity @s[scores={Dialog=220}] run setblock 789 90 16 minecraft:oak_door[facing=north,half=lower,hinge=left,open=true]
execute if entity @s[scores={Dialog=220}] run setblock 789 91 16 minecraft:oak_door[facing=north,half=upper,hinge=left,open=true]
execute if entity @s[scores={Dialog=260}] run fill 789 90 16 789 91 16 minecraft:air
execute if entity @s[scores={Dialog=260}] run setblock 789 90 16 minecraft:oak_door[facing=north,half=lower,hinge=left,open=false]
execute if entity @s[scores={Dialog=260}] run setblock 789 91 16 minecraft:oak_door[facing=north,half=upper,hinge=left,open=false]
teleport @s[scores={Dialog=260}] ~ ~-100 ~
tag @s[scores={Dialog=260}] add remove_from_existence