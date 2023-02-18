execute unless entity @s[scores={Room=21}] run title @s title {"translate":"luigis_mansion:location.mirror_room"}
scoreboard players set @s Room 21
scoreboard players set @s PreviousRoom 21

teleport @s[scores={HomeX=735}] ~-17 ~ ~
teleport @s[scores={HomeX=747}] ~-1 ~ ~
teleport @s[scores={HomeZ=58}] ~ ~ ~-6
teleport @s[scores={HomeZ=77}] ~ ~ ~-1

teleport @s[scores={HomeY=9}] ~ ~-3 ~
teleport @s[scores={HomeY=16}] ~ ~3 ~

tag @s add already_ticked