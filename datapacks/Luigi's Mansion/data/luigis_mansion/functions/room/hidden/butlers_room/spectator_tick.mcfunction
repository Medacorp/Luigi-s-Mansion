execute unless entity @s[scores={Room=23}] run title @s title {"translate":"luigis_mansion:location.butlers_room"}
scoreboard players set @s Room 23
scoreboard players set @s PrevRoom 23

teleport @s[scores={HomeX=738}] ~-20 ~ ~-4
teleport @s[scores={HomeX=750}] ~-1 ~ ~
teleport @s[scores={HomeZ=-39}] ~-1 ~ ~6
teleport @s[scores={HomeZ=-57}] ~ ~ ~1

teleport @s[scores={HomeY=9}] ~ ~1 ~
teleport @s[scores={HomeY=16}] ~ ~3 ~

tag @s add already_ticked