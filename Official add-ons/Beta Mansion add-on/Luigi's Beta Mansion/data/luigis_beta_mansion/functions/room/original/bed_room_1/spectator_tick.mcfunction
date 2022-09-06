execute unless entity @s[scores={Room=6}] run title @s title {"translate":"luigis_beta_mansion:location.bed_room_1"}
scoreboard players set @s Room 6
scoreboard players set @s PrevRoom 6

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