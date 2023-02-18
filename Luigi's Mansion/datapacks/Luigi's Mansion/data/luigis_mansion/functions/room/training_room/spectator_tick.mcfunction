execute unless entity @s[scores={Room=-2}] run title @s title {"translate":"luigis_mansion:location.training_room"}
scoreboard players set @s Room -2
scoreboard players set @s PreviousRoom -2
teleport @s[scores={HomeZ=-21}] ~ ~ ~1
teleport @s[scores={HomeX=783..795,HomeZ=4}] ~ ~ ~2
teleport @s[scores={HomeX=796..798,HomeZ=4}] ~ ~ ~-1
teleport @s[scores={HomeX=799}] ~-1 ~ ~
teleport @s[scores={HomeX=782}] ~1 ~ ~

teleport @s[scores={HomeY=75}] ~ ~1 ~
teleport @s[scores={HomeY=82}] ~ ~-1 ~

tag @s add already_ticked