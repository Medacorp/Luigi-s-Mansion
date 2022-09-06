scoreboard players set @s Room 76
scoreboard players set @s PrevRoom 76

teleport @s[scores={HomeX=..475}] ~1 ~ ~
teleport @s[scores={HomeX=504..}] ~-1 ~ ~
teleport @s[scores={HomeZ=..-30}] ~ ~ ~1
teleport @s[scores={HomeZ=45..}] ~ ~ ~-1

teleport @s[scores={HomeY=..35}] ~ ~1 ~
teleport @s[scores={HomeY=71..}] ~ ~-1 ~

tag @s add already_ticked