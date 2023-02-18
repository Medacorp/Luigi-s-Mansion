execute unless entity @s[scores={Room=6}] run title @s title {"translate":"luigis_mansion:location.balcony_1"}
scoreboard players set @s Room 6
scoreboard players set @s PreviousRoom 6

teleport @s[scores={HomeX=673}] ~1 ~ ~
teleport @s[scores={HomeX=681}] ~3 ~ ~
teleport @s[scores={HomeZ=38}] ~5 ~-91 ~36
teleport @s[scores={HomeZ=44}] ~ ~ ~-1

teleport @s[scores={HomeY=116}] ~ ~-1 ~
teleport @s[scores={HomeY=109}] ~ ~-3 ~

tag @s add already_ticked