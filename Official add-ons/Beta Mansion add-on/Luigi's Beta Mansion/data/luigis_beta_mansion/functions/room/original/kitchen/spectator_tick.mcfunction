execute unless entity @s[scores={Room=15}] run title @s title {"translate":"luigis_mansion:location.kitchen"}
scoreboard players set @s Room 15
scoreboard players set @s PrevRoom 15

teleport @s[scores={HomeX=710,HomeZ=63..71}] ~4 ~ ~-48
teleport @s[scores={HomeX=710,HomeZ=72..73}] ~-1 ~ ~
teleport @s[scores={HomeX=710,HomeZ=74..90}] ~4 ~ ~-15
teleport @s[scores={HomeX=698,HomeZ=63..71}] ~-12 ~ ~17
teleport @s[scores={HomeX=698,HomeZ=72..73}] ~1 ~ ~
teleport @s[scores={HomeX=698,HomeZ=74..90}] ~-14 ~91 ~-35
teleport @s[scores={HomeZ=91}] ~ ~ ~-1
teleport @s[scores={HomeZ=62}] ~ ~ ~-6

teleport @s[scores={HomeY=9}] ~ ~1 ~
teleport @s[scores={HomeY=16,HomeZ=63..71}] ~6 ~3 ~-10
teleport @s[scores={HomeY=16,HomeZ=72..73}] ~ ~-1 ~
teleport @s[scores={HomeY=16,HomeZ=74..90}] ~-12 ~94 ~-35

tag @s add already_ticked