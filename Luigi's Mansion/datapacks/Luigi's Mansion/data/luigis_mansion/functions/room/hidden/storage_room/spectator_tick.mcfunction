execute unless entity @s[scores={Room=18}] run title @s title {"translate":"luigis_mansion:location.storage_room"}
scoreboard players set @s Room 18
scoreboard players set @s PreviousRoom 18

teleport @s[scores={HomeX=690}] ~7 ~ ~
teleport @s[scores={HomeX=680,HomeZ=54..58}] ~4 ~ ~-15
teleport @s[scores={HomeX=680,HomeZ=59..60}] ~1 ~ ~
teleport @s[scores={HomeX=680,HomeZ=61..83}] ~-15 ~ ~-8
teleport @s[scores={HomeZ=53}] ~6 ~ ~-17
teleport @s[scores={HomeZ=84}] ~ ~ ~-1

teleport @s[scores={HomeY=16,HomeZ=54..72}] ~-19 ~3 ~34
teleport @s[scores={HomeY=16,HomeZ=73..74}] ~ ~-1 ~
teleport @s[scores={HomeY=16,HomeZ=75..83}] ~-40 ~3 ~14
teleport @s[scores={HomeY=9,HomeZ=54..58,HomeX=688..689}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=54..59,HomeX=686..687}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=54..60,HomeX=681..685}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=59..64,HomeX=688..689}] ~-8 ~-3 ~-28
teleport @s[scores={HomeY=9,HomeZ=60..65,HomeX=686..687}] ~-8 ~-3 ~-28
teleport @s[scores={HomeY=9,HomeZ=61..65,HomeX=681..685}] ~-8 ~-3 ~-28
teleport @s[scores={HomeY=9,HomeZ=65..73,HomeX=688..689}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=66..73,HomeX=681..687}] ~ ~1 ~

tag @s add already_ticked