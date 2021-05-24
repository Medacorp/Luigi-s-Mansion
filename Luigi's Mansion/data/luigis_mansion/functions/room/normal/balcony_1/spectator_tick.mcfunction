execute unless entity @s[scores={Room=6}] run title @s title {"translate":"luigis_mansion:location.balcony"}
scoreboard players set @s Room 6
scoreboard players set @s PrevRoom 6

teleport @s[scores={HomeX=673}] ~1 ~ ~
teleport @s[scores={HomeX=679}] ~5 ~ ~
teleport @s[scores={HomeZ=38}] ~5 ~-91 ~36
teleport @s[scores={HomeZ=43}] ~ ~ ~-1

teleport @s[scores={HomeY=116}] ~ ~-1 ~
teleport @s[scores={HomeY=109}] ~ ~-3 ~

tag @s add already_ticked