execute unless entity @s[scores={Room=4}] run title @s title {"translate":"luigis_mansion:location.anteroom"}
scoreboard players set @s Room 4
scoreboard players set @s PreviousRoom 4

teleport @s[scores={HomeX=694}] ~20 ~ ~5
teleport @s[scores={HomeX=684}] ~ ~ ~38
teleport @s[scores={HomeZ=-27}] ~-7 ~ ~-15
teleport @s[scores={HomeZ=-8}] ~2 ~ ~40

teleport @s[scores={HomeY=25}] ~-12 ~94 ~25
teleport @s[scores={HomeY=18,HomeZ=-26..-24}] ~-10 ~-3 ~-27
teleport @s[scores={HomeY=18,HomeZ=-23..-22}] ~ ~1 ~
teleport @s[scores={HomeY=18,HomeZ=-21..-9}] ~-10 ~-3 ~-8

tag @s add already_ticked