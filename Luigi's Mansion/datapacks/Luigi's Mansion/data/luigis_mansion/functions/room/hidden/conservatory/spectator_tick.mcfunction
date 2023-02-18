execute unless entity @s[scores={Room=25}] run title @s title {"translate":"luigis_mansion:location.conservatory"}
scoreboard players set @s Room 25
scoreboard players set @s PreviousRoom 25

teleport @s[scores={HomeX=653}] ~-1 ~91 ~-19
teleport @s[scores={HomeX=663}] ~17 ~ ~-6
teleport @s[scores={HomeZ=17}] ~15 ~ ~-8
teleport @s[scores={HomeZ=43}] ~-15 ~ ~3

teleport @s[scores={HomeY=9}] ~ ~1 ~
teleport @s[scores={HomeY=16}] ~ ~3 ~

tag @s add already_ticked