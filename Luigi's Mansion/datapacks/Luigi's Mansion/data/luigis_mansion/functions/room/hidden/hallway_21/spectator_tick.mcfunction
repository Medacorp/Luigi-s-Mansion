scoreboard players set @s Room 60
scoreboard players set @s PreviousRoom 60

teleport @s[scores={HomeX=700}] ~-16 ~ ~
teleport @s[scores={HomeZ=36,HomeX=700..711}] ~-13 ~ ~23
teleport @s[scores={HomeZ=36,HomeX=712}] ~ ~ ~-1
teleport @s[scores={HomeZ=30,HomeX=700..711}] ~-13 ~ ~-11
teleport @s[scores={HomeZ=30,HomeX=712}] ~ ~ ~1

teleport @s[scores={HomeY=0}] ~ ~1 ~
teleport @s[scores={HomeY=7,HomeX=700..711}] ~-1 ~3 ~28
teleport @s[scores={HomeY=7,HomeX=712}] ~ ~-1 ~

tag @s add already_ticked