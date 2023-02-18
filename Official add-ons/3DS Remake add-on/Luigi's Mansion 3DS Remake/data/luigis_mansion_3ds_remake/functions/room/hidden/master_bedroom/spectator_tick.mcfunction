execute unless entity @s[scores={Room=9}] run title @s title {"translate":"luigis_mansion:location.master_bedroom"}
scoreboard players set @s Room 9
scoreboard players set @s PreviousRoom 9

teleport @s[scores={HomeX=698}] ~26 ~-91 ~24
teleport @s[scores={HomeX=683,HomeZ=39..43}] ~-3 ~ ~
teleport @s[scores={HomeX=683,HomeZ=44..55}] ~1 ~ ~
teleport @s[scores={HomeZ=38}] ~18 ~-91 ~23
teleport @s[scores={HomeZ=56}] ~ ~ ~-1

teleport @s[scores={HomeY=116}] ~14 ~-88 ~25
teleport @s[scores={HomeY=109,HomeX=684}] ~ ~-3 ~
teleport @s[scores={HomeY=109,HomeX=685..686}] ~ ~1 ~
teleport @s[scores={HomeY=109,HomeX=687..697}] ~12 ~-94 ~35

tag @s add already_ticked