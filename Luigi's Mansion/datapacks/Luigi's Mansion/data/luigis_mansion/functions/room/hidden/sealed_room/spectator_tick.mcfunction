execute unless entity @s[scores={Room=66}] run title @s title {"translate":"luigis_mansion:location.sealed_room"}
scoreboard players set @s Room 66
scoreboard players set @s PreviousRoom 66

teleport @s[scores={HomeX=694,HomeZ=72..90}] ~-24 ~ ~16
teleport @s[scores={HomeX=694,HomeZ=91..92}] ~1 ~ ~
teleport @s[scores={HomeX=694,HomeZ=93..101}] ~-45 ~ ~-4
teleport @s[scores={HomeX=709}] ~5 ~ ~-33
teleport @s[scores={HomeZ=71}] ~3 ~ ~-35
teleport @s[scores={HomeZ=102}] ~ ~ ~-1

teleport @s[scores={HomeY=18}] ~2 ~-3 ~-18
teleport @s[scores={HomeY=25,HomeZ=72..76}] ~31 ~3 ~-46
teleport @s[scores={HomeY=25,HomeZ=77..78}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=79..83,HomeX=695..698}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=79..83,HomeX=699..708}] ~-6 ~3 ~-7
teleport @s[scores={HomeY=25,HomeZ=84..101}] ~-6 ~3 ~-7

tag @s add already_ticked