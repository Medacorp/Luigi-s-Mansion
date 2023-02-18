execute unless entity @s[scores={Room=49}] run title @s title {"translate":"luigis_mansion:location.the_twins_room"}
scoreboard players set @s Room 49
scoreboard players set @s PreviousRoom 49

teleport @s[scores={HomeX=737}] ~-9 ~ ~-12
teleport @s[scores={HomeX=749}] ~-1 ~ ~
teleport @s[scores={HomeZ=-34}] ~1 ~ ~-6
teleport @s[scores={HomeZ=-15}] ~6 ~ ~13

teleport @s[scores={HomeY=18}] ~ ~-3 ~
teleport @s[scores={HomeY=25,HomeZ=-33..-31}] ~15 ~3 ~-11
teleport @s[scores={HomeY=25,HomeZ=-30..-29}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=-28..-23}] ~10 ~3 ~-4
teleport @s[scores={HomeY=25,HomeZ=-22..-21}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=-20..-16}] ~7 ~3 ~2

tag @s add already_ticked