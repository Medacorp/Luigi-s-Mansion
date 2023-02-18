execute unless entity @s[scores={Room=31}] run title @s title {"translate":"luigis_mansion:location.bottom_of_the_well"}
scoreboard players set @s Room 31
scoreboard players set @s PreviousRoom 31

teleport @s[scores={HomeX=650}] ~-1 ~ ~
teleport @s[scores={HomeX=649,HomeZ=20..24}] ~-1 ~ ~
teleport @s[scores={HomeX=647,HomeZ=20..24}] ~1 ~ ~
teleport @s[scores={HomeX=646}] ~1 ~ ~
teleport @s[scores={HomeZ=16}] ~ ~ ~1
teleport @s[scores={HomeZ=20,HomeY=92..94,HomeX=647}] ~ ~ ~-1
teleport @s[scores={HomeZ=20,HomeY=95..101}] ~ ~ ~-1
teleport @s[scores={HomeZ=20,HomeY=92..94,HomeX=649}] ~ ~ ~-1

teleport @s[scores={HomeY=91}] ~ ~1 ~
teleport @s[scores={HomeY=94,HomeZ=21..24}] ~ ~7 ~

tag @s add already_ticked