execute unless entity @s[scores={Room=24}] run title @s title {"translate":"luigis_mansion:location.hidden_room"}
scoreboard players set @s Room 24
scoreboard players set @s PreviousRoom 24

teleport @s[scores={HomeX=737}] ~-19 ~ ~-25
teleport @s[scores={HomeX=749}] ~-1 ~ ~
teleport @s[scores={HomeZ=49}] ~1 ~ ~6
teleport @s[scores={HomeZ=30}] ~6 ~ ~-13

teleport @s[scores={HomeY=9}] ~ ~1 ~
teleport @s[scores={HomeY=16}] ~ ~3 ~

tag @s add already_ticked