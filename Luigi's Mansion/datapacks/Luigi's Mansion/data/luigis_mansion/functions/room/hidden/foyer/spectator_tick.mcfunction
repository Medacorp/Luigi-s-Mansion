execute unless entity @s[scores={Room=1}] run title @s title {"translate":"luigis_mansion:location.foyer"}
scoreboard players set @s Room 1
scoreboard players set @s PreviousRoom 1

execute in minecraft:overworld run teleport @s[scores={HomeX=755}] 790 77 15 45 0
teleport @s[scores={HomeX=743,HomeY=10..15}] ~-25 ~ ~14
teleport @s[scores={HomeX=743,HomeY=16..18}] ~1 ~ ~
teleport @s[scores={HomeZ=-3,HomeY=10..15,HomeX=744..754}] ~-6 ~ ~-13
teleport @s[scores={HomeZ=-3,HomeY=16..18}] ~ ~ ~1
teleport @s[scores={HomeZ=-3,HomeX=742..743}] ~ ~ ~1
teleport @s[scores={HomeZ=-3,HomeY=19..25,HomeX=744..754}] ~-6 ~ ~-13
teleport @s[scores={HomeZ=16,HomeY=10..15,HomeX=744..754}] ~-8 ~ ~20
teleport @s[scores={HomeZ=16,HomeY=16..18}] ~ ~ ~-1
teleport @s[scores={HomeZ=16,HomeX=742..743}] ~ ~ ~1
teleport @s[scores={HomeZ=16,HomeY=19..25,HomeX=744..754}] ~-8 ~ ~20

teleport @s[scores={HomeY=25}] ~1 ~3 ~-9
teleport @s[scores={HomeY=9,HomeZ=-2..12}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=13..15}] ~-14 ~-3 ~-8

tag @s add already_ticked