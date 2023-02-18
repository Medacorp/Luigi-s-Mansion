execute unless entity @s[scores={Room=27}] run title @s title {"translate":"luigis_mansion:location.kitchen"}
scoreboard players set @s Room 27
scoreboard players set @s PreviousRoom 27

teleport @s[scores={HomeX=710,HomeZ=-56..-48}] ~4 ~ ~48
teleport @s[scores={HomeX=710,HomeZ=-58..-57}] ~-1 ~ ~
teleport @s[scores={HomeX=710,HomeZ=-75..-59}] ~4 ~ ~15
teleport @s[scores={HomeX=698,HomeZ=-56..-48}] ~-12 ~ ~-17
teleport @s[scores={HomeX=698,HomeZ=-58..-57}] ~1 ~ ~
teleport @s[scores={HomeX=698,HomeZ=-75..-59}] ~-14 ~91 ~35
teleport @s[scores={HomeZ=-76}] ~ ~ ~1
teleport @s[scores={HomeZ=-47}] ~ ~ ~6

teleport @s[scores={HomeY=9}] ~ ~1 ~
teleport @s[scores={HomeY=16,HomeZ=-56..-48}] ~6 ~3 ~10
teleport @s[scores={HomeY=16,HomeZ=-58..-57}] ~ ~-1 ~
teleport @s[scores={HomeY=16,HomeZ=-75..-59}] ~-12 ~94 ~35

tag @s add already_ticked