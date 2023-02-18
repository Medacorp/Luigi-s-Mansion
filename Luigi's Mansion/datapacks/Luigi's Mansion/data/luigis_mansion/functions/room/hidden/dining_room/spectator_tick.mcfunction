execute unless entity @s[scores={Room=26}] run title @s title {"translate":"luigis_mansion:location.dining_room"}
scoreboard players set @s Room 26
scoreboard players set @s PreviousRoom 26

teleport @s[scores={HomeX=698,HomeZ=-27..-15}] ~-12 ~ ~-2
teleport @s[scores={HomeX=698,HomeZ=-29..-28}] ~1 ~ ~
teleport @s[scores={HomeX=698,HomeZ=-41..-30}] ~-12 ~ ~-21
teleport @s[scores={HomeX=710}] ~4 ~ ~44
teleport @s[scores={HomeZ=-14}] ~2 ~ ~46
teleport @s[scores={HomeZ=-42}] ~ ~ ~-6

teleport @s[scores={HomeY=9,HomeZ=-17..-15}] ~-11 ~-3 ~22
teleport @s[scores={HomeY=9,HomeZ=-41..-18}] ~ ~1 ~
teleport @s[scores={HomeY=16,HomeZ=-41..-35}] ~6 ~3 ~6
teleport @s[scores={HomeY=16,HomeZ=-34..-33}] ~ ~-1 ~
teleport @s[scores={HomeY=16,HomeZ=-32..-15}] ~18 ~3 ~11

tag @s add already_ticked