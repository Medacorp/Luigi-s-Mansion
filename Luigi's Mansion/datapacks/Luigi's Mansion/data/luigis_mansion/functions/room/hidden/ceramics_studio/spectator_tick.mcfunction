execute unless entity @s[scores={Room=65}] run title @s title {"translate":"luigis_mansion:location.ceramics_studio"}
scoreboard players set @s Room 65
scoreboard players set @s PreviousRoom 65

teleport @s[scores={HomeX=697}] ~1 ~ ~
teleport @s[scores={HomeX=701,HomeZ=-47..-43}] ~1 ~ ~
teleport @s[scores={HomeX=712}] ~34 ~ ~2
teleport @s[scores={HomeZ=-66}] ~ ~ ~1
teleport @s[scores={HomeZ=-47,HomeX=698..701}] ~ ~ ~-1
teleport @s[scores={HomeZ=-42}] ~27 ~ ~11

teleport @s[scores={HomeY=27,HomeZ=-65..-49}] ~-14 ~88 ~25
teleport @s[scores={HomeY=27,HomeZ=-48..-47}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeZ=-46..-43}] ~4 ~-3 ~
teleport @s[scores={HomeY=34,HomeZ=-65..-55}] ~ ~-1 ~
teleport @s[scores={HomeY=34,HomeZ=-54..-43}] ~-14 ~96 ~25

tag @s add already_ticked