execute unless entity @s[scores={Room=22}] run title @s title {"translate":"luigis_mansion:location.laundry_room"}
scoreboard players set @s Room 22
scoreboard players set @s PreviousRoom 22

teleport @s[scores={HomeX=713}] ~-4 ~ ~15
teleport @s[scores={HomeX=719}] ~20 ~ ~-4
teleport @s[scores={HomeZ=58}] ~ ~ ~-35
teleport @s[scores={HomeZ=76}] ~ ~ ~-1

teleport @s[scores={HomeY=9}] ~ ~1 ~
teleport @s[scores={HomeY=16}] ~10 ~3 ~4

tag @s add already_ticked