$function luigis_mansion:entities/luigi/move/execute {execute:"positioned ~ ~ ~",teleport:"$(x) $(y) $(z) $(yaw) $(pitch)"}
tag @s add wind_warped
tag @s add wind_warping
tag @e[tag=me,limit=1] remove wind_warp