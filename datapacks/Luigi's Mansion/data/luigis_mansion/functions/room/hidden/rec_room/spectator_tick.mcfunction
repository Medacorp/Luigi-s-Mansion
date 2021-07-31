execute unless entity @s[scores={Room=32}] run title @s title {"translate":"luigis_mansion:location.rec_room"}
scoreboard players set @s Room 32
scoreboard players set @s PrevRoom 32

teleport @s[scores={HomeX=638}] ~14 ~91 ~-20
teleport @s[scores={HomeX=648,HomeZ=46..50}] ~32 ~ ~-7
teleport @s[scores={HomeX=648,HomeZ=51..52}] ~-1 ~ ~
teleport @s[scores={HomeX=648,HomeZ=53..75}] ~13 ~ ~
teleport @s[scores={HomeZ=45}] ~15 ~ ~-3
teleport @s[scores={HomeZ=76}] ~ ~ ~-1

teleport @s[scores={HomeY=16}] ~ ~3 ~
teleport @s[scores={HomeY=9,HomeZ=46..52,HomeX=639}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=46..51,HomeX=640..643}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=46..50,HomeX=644..647}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=51..55,HomeX=639}] ~16 ~-3 ~-20
teleport @s[scores={HomeY=9,HomeZ=50..55,HomeX=640..643}] ~16 ~-3 ~-20
teleport @s[scores={HomeY=9,HomeZ=49..54,HomeX=644..645}] ~16 ~-3 ~-20
teleport @s[scores={HomeY=9,HomeZ=49..53,HomeX=646..647}] ~16 ~-3 ~-20
teleport @s[scores={HomeY=9,HomeZ=56..75,HomeX=639..643}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=55..75,HomeX=644..645}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=54..75,HomeX=646..647}] ~ ~1 ~

tag @s add already_ticked