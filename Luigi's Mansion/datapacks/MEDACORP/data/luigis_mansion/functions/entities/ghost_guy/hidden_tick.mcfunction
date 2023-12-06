execute at @s run function luigis_mansion:entities/ghost/hidden_tick
execute at @s[tag=spawn,tag=has_partner,tag=!partner_died] run function luigis_mansion:entities/ghost_guy/spawn_partner
execute at @s run function luigis_mansion:old_animations/ghost_guy/idle
scoreboard players set @s PathStep 1
tag @s[tag=spawn,tag=!no_appear] add appear
tag @s[tag=!partner_died,tag=dancing] remove stop_dancing
tag @s[tag=partner_died] add stop_dancing
tag @s remove maskless
tag @s remove leader
tag @s remove new_leader
tag @s remove stunnable
tag @s remove spawn