execute unless entity @s[scores={Room=10}] run title @s title {"translate":"luigis_mansion:location.nursery"}
scoreboard players set @s Room 10
scoreboard players set @s PreviousRoom 10

teleport @s[scores={HomeX=738}] ~-10 ~ ~-8
teleport @s[scores={HomeX=750}] ~-1 ~ ~
teleport @s[scores={HomeZ=-39}] ~-1 ~ ~6
teleport @s[scores={HomeZ=-57}] ~ ~ ~1

teleport @s[scores={HomeY=25}] ~14 ~3 ~-7
teleport @s[scores={HomeY=18}] ~ ~-3 ~

tag @s add already_ticked