execute unless block ~ ~1 ~-1 #luigis_mansion:ghosts_ignore unless block ~ ~2 ~-1 #luigis_mansion:ghosts_ignore run function luigis_beta_mansion:entities/beta_mouse/randomize/south
execute unless block ~ ~1 ~1 #luigis_mansion:ghosts_ignore unless block ~ ~2 ~1 #luigis_mansion:ghosts_ignore run function luigis_beta_mansion:entities/beta_mouse/randomize/north
execute unless block ~1 ~1 ~ #luigis_mansion:ghosts_ignore unless block ~1 ~2 ~ #luigis_mansion:ghosts_ignore run function luigis_beta_mansion:entities/beta_mouse/randomize/west
execute unless block ~-1 ~1 ~ #luigis_mansion:ghosts_ignore unless block ~-1 ~2 ~ #luigis_mansion:ghosts_ignore run function luigis_beta_mansion:entities/beta_mouse/randomize/east

execute unless block ~ ~1 ~-1 #luigis_mansion:ghosts_ignore if block ~ ~1 ~1 #luigis_mansion:ghosts_ignore if block ~-1 ~1 ~ #luigis_mansion:ghosts_ignore if block ~1 ~1 ~ #luigis_mansion:ghosts_ignore run function luigis_beta_mansion:entities/beta_mouse/randomize/south
execute unless block ~ ~1 ~1 #luigis_mansion:ghosts_ignore if block ~ ~1 ~-1 #luigis_mansion:ghosts_ignore if block ~-1 ~1 ~ #luigis_mansion:ghosts_ignore if block ~1 ~1 ~ #luigis_mansion:ghosts_ignore run function luigis_beta_mansion:entities/beta_mouse/randomize/north
execute unless block ~1 ~1 ~ #luigis_mansion:ghosts_ignore if block ~-1 ~1 ~ #luigis_mansion:ghosts_ignore if block ~ ~1 ~1 #luigis_mansion:ghosts_ignore if block ~ ~1 ~-1 #luigis_mansion:ghosts_ignore run function luigis_beta_mansion:entities/beta_mouse/randomize/west
execute unless block ~-1 ~1 ~ #luigis_mansion:ghosts_ignore if block ~1 ~1 ~ #luigis_mansion:ghosts_ignore if block ~ ~1 ~1 #luigis_mansion:ghosts_ignore if block ~ ~1 ~-1 #luigis_mansion:ghosts_ignore run function luigis_beta_mansion:entities/beta_mouse/randomize/east
tag @s add rotated
tag @s add visible