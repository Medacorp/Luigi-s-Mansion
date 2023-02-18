execute unless entity @s[scores={Room=70}] run title @s title {"translate":"luigis_mansion:location.guest_room"}
scoreboard players set @s Room 70
scoreboard players set @s PreviousRoom 70

teleport @s[scores={HomeX=735}] ~-17 ~ ~8
teleport @s[scores={HomeX=747}] ~-1 ~ ~
teleport @s[scores={HomeZ=-43}] ~ ~ ~6
teleport @s[scores={HomeZ=-62}] ~ ~ ~1

teleport @s[scores={HomeY=18}] ~ ~-3 ~
teleport @s[scores={HomeY=25}] ~-2 ~3 ~3

tag @s add already_ticked