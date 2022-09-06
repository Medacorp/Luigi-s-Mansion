execute unless entity @s[scores={Room=20}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 20
scoreboard players set @s PrevRoom 20

teleport @s[scores={HomeX=679,HomeY=10..15}] ~-32 ~ ~-7
teleport @s[scores={HomeX=679,HomeY=16..18}] ~-18 ~ ~-7
teleport @s[scores={HomeX=679,HomeY=19..24}] ~-32 ~ ~-7
teleport @s[scores={HomeX=685,HomeY=10..15}] ~-4 ~ ~-33
teleport @s[scores={HomeX=685,HomeY=16..18}] ~-1 ~ ~
teleport @s[scores={HomeX=685,HomeY=19..24,HomeZ=-42..-31}] ~-23 ~ ~-49
teleport @s[scores={HomeX=685,HomeY=19..24,HomeZ=-44..-43}] ~-1 ~ ~
teleport @s[scores={HomeX=685,HomeY=19..24,HomeZ=-53..-45}] ~-44 ~ ~-29
teleport @s[scores={HomeZ=-44,HomeY=16..18}] ~ ~ ~-1
teleport @s[scores={HomeZ=-54}] ~ ~ ~1

teleport @s[scores={HomeY=25}] ~-14 ~94 ~13
teleport @s[scores={HomeY=18,HomeZ=-44..-31}] ~ ~-3 ~
teleport @s[scores={HomeY=16,HomeZ=-44..-31}] ~ ~3 ~
teleport @s[scores={HomeY=9,HomeZ=-53..-34}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=-33..-30}] ~-14 ~-3 ~13

tag @s add already_ticked