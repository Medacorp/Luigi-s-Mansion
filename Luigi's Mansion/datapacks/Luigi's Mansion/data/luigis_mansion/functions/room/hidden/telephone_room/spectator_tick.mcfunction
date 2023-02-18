execute unless entity @s[scores={Room=56}] run title @s title {"translate":"luigis_mansion:location.telephone_room"}
scoreboard players set @s Room 56
scoreboard players set @s PreviousRoom 56

teleport @s[scores={HomeX=737}] ~-40 ~91 ~10
teleport @s[scores={HomeX=756,HomeZ=-18..-6}] ~-1 ~ ~
teleport @s[scores={HomeX=756,HomeZ=1..13}] ~-1 ~ ~
teleport @s[scores={HomeX=757..760,HomeZ=-6}] ~ ~ ~1
teleport @s[scores={HomeX=757..760,HomeZ=1}] ~ ~ ~-1
teleport @s[scores={HomeX=761}] ~-1 ~ ~
teleport @s[scores={HomeZ=-19}] ~3 ~ ~-8
teleport @s[scores={HomeZ=14}] ~4 ~ ~12

teleport @s[scores={HomeY=27,HomeX=756..760}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=738..742,HomeZ=-18..-14}] ~-14 ~-3 ~-14
teleport @s[scores={HomeY=27,HomeX=743..744,HomeZ=-18..-14}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=745..755,HomeZ=-18..-14}] ~-7 ~-3 ~-2
teleport @s[scores={HomeY=27,HomeX=738..755,HomeZ=-13..-12}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=738..755,HomeZ=-11..6}] ~-1 ~-3 ~9
teleport @s[scores={HomeY=27,HomeX=738..755,HomeZ=7..8}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=738..742,HomeZ=9..13}] ~-24 ~-3 ~23
teleport @s[scores={HomeY=27,HomeX=743..744,HomeZ=9..13}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=745..755,HomeZ=9..13}] ~-9 ~-3 ~27

teleport @s[scores={HomeY=34,HomeX=739..749}] ~-38 ~96 ~10
teleport @s[scores={HomeY=34,HomeX=750..760}] ~ ~-1 ~

tag @s add already_ticked