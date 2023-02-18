execute unless entity @s[scores={Room=42}] run title @s title {"translate":"luigis_mansion:location.washroom_2"}
scoreboard players set @s Room 42
scoreboard players set @s PreviousRoom 42

teleport @s[scores={HomeX=661}] ~-3 ~ ~-19
teleport @s[scores={HomeX=667}] ~11 ~ ~28
teleport @s[scores={HomeZ=47}] ~ ~ ~-1
teleport @s[scores={HomeZ=35}] ~18 ~ ~-25

teleport @s[scores={HomeY=18}] ~ ~-3 ~
teleport @s[scores={HomeY=25}] ~4 ~94 ~-10

tag @s add already_ticked