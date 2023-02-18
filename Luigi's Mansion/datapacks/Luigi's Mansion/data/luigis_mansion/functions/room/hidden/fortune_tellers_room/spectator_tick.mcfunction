execute unless entity @s[scores={Room=20}] run title @s title {"translate":"luigis_mansion:location.fortune_tellers_room"}
scoreboard players set @s Room 20
scoreboard players set @s PreviousRoom 20

teleport @s[scores={HomeX=747}] ~-1 ~ ~
teleport @s[scores={HomeX=735}] ~-17 ~ ~-4
teleport @s[scores={HomeZ=35}] ~8 ~ ~-20
teleport @s[scores={HomeZ=53}] ~ ~ ~6

teleport @s[scores={HomeY=9,HomeZ=48..52}] ~-15 ~-3 ~-17
teleport @s[scores={HomeY=9,HomeZ=46..47}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=36..45}] ~-6 ~-3 ~-26
teleport @s[scores={HomeY=16}] ~ ~3 ~

tag @s add already_ticked