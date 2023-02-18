execute unless entity @s[scores={Room=3}] run title @s title {"translate":"luigis_mansion:location.parlor"}
scoreboard players set @s Room 3
scoreboard players set @s PreviousRoom 3

teleport @s[scores={HomeX=713}] ~-20 ~ ~-5
teleport @s[scores={HomeX=728}] ~9 ~ ~19
teleport @s[scores={HomeZ=-22}] ~-12 ~ ~-7
teleport @s[scores={HomeZ=-3}] ~-16 ~ ~35

teleport @s[scores={HomeY=25}] ~-30 ~94 ~20
teleport @s[scores={HomeY=18,HomeX=714,HomeZ=-21..-19}] ~-28 ~-3 ~-32
teleport @s[scores={HomeY=18,HomeX=714,HomeZ=-18..-17}] ~ ~1 ~
teleport @s[scores={HomeY=18,HomeX=714,HomeZ=-16..-4}] ~-28 ~-3 ~-13
teleport @s[scores={HomeY=18,HomeX=715..716}] ~ ~1 ~
teleport @s[scores={HomeY=18,HomeX=717..727}] ~-18 ~-3 ~-11

tag @s add already_ticked