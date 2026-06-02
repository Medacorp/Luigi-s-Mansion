$function luigis_mansion:entities/luigi/move/execute {execute:"at @s positioned ~ ~2 ~ if block ~ ~ ~ #luigis_mansion:players_ignore unless block ~ ~-$(amount) ~ #luigis_mansion:players_ignore positioned ~ ~-2 ~ if block ~ ~-0.1 ~ #luigis_mansion:players_ignore",teleport:"~ ~-$(amount) ~"}
$function luigis_mansion:entities/luigi/move/execute {execute:"at @s unless block ~ ~ ~ #luigis_mansion:players_ignore if block ~ ~$(amount) ~ #luigis_mansion:players_ignore",teleport:"~ ~$(amount) ~"}
execute at @s[y_rotation=-135..-45] unless block ~0.3 ~ ~ #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run tag @s add hit_wall_front
execute at @s[y_rotation=45..-135] unless block ~0.3 ~ ~ #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run tag @s add hit_wall_back
execute at @s[y_rotation=-135..-45] unless block ~-0.3 ~ ~ #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run tag @s add hit_wall_back
execute at @s[y_rotation=45..-135] unless block ~-0.3 ~ ~ #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run tag @s add hit_wall_front
execute at @s[y_rotation=-45..45] unless block ~ ~ ~0.3 #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run tag @s add hit_wall_front
execute at @s[y_rotation=135..-135] unless block ~ ~ ~0.3 #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run tag @s add hit_wall_back
execute at @s[y_rotation=-45..45] unless block ~ ~ ~-0.3 #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run tag @s add hit_wall_back
execute at @s[y_rotation=135..-135] unless block ~ ~ ~-0.3 #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run tag @s add hit_wall_front
execute at @s[y_rotation=-135..-45] unless block ~0.3 ~1 ~ #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run tag @s add hit_wall_front
execute at @s[y_rotation=45..-135] unless block ~0.3 ~1 ~ #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run tag @s add hit_wall_back
execute at @s[y_rotation=-135..-45] unless block ~-0.3 ~1 ~ #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run tag @s add hit_wall_back
execute at @s[y_rotation=45..-135] unless block ~-0.3 ~1 ~ #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run tag @s add hit_wall_front
execute at @s[y_rotation=-45..45] unless block ~ ~1 ~0.3 #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run tag @s add hit_wall_front
execute at @s[y_rotation=135..-135] unless block ~ ~1 ~0.3 #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run tag @s add hit_wall_back
execute at @s[y_rotation=-45..45] unless block ~ ~1 ~-0.3 #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run tag @s add hit_wall_back
execute at @s[y_rotation=135..-135] unless block ~ ~1 ~-0.3 #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run tag @s add hit_wall_front
$function luigis_mansion:entities/luigi/move/execute {execute:"at @s unless block ~0.3 ~ ~ #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore",teleport:"~-$(amount) ~ ~"}
$function luigis_mansion:entities/luigi/move/execute {execute:"at @s unless block ~-0.3 ~ ~ #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore",teleport:"~$(amount) ~ ~"}
$function luigis_mansion:entities/luigi/move/execute {execute:"at @s unless block ~ ~ ~0.3 #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore",teleport:"~ ~ ~-$(amount)"}
$function luigis_mansion:entities/luigi/move/execute {execute:"at @s unless block ~ ~ ~-0.3 #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore",teleport:"~ ~ ~$(amount)"}
$function luigis_mansion:entities/luigi/move/execute {execute:"at @s unless block ~0.3 ~1 ~ #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore",teleport:"~-$(amount) ~ ~"}
$function luigis_mansion:entities/luigi/move/execute {execute:"at @s unless block ~-0.3 ~1 ~ #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore",teleport:"~$(amount) ~ ~"}
$function luigis_mansion:entities/luigi/move/execute {execute:"at @s unless block ~ ~1 ~0.3 #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore",teleport:"~ ~ ~-$(amount)"}
$function luigis_mansion:entities/luigi/move/execute {execute:"at @s unless block ~ ~1 ~-0.3 #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore",teleport:"~ ~ ~$(amount)"}