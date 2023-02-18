execute unless entity @s[scores={Room=62}] run title @s title {"translate":"luigis_mansion:location.clockwork_room"}
scoreboard players set @s Room 62
scoreboard players set @s PreviousRoom 62

teleport @s[scores={HomeX=683}] ~-2 ~ ~
teleport @s[scores={HomeX=698}] ~40 ~-91 ~10
teleport @s[scores={HomeZ=-9}] ~42 ~-91 ~-2
teleport @s[scores={HomeZ=24}] ~41 ~-91 ~18

teleport @s[scores={HomeY=118,HomeZ=-8..-4}] ~14 ~-94 ~-13
teleport @s[scores={HomeY=118,HomeZ=-3..-2}] ~ ~1 ~
teleport @s[scores={HomeY=118,HomeZ=-1..16}] ~30 ~-94 ~20
teleport @s[scores={HomeY=118,HomeZ=17..18}] ~ ~1 ~
teleport @s[scores={HomeY=118,HomeZ=19..23}] ~18 ~-94 ~25
teleport @s[scores={HomeY=125}] ~ ~5 ~

tag @s add already_ticked