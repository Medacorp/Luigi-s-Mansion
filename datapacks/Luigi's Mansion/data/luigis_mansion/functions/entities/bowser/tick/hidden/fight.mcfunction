execute if entity @s[tag=!intro_done] run function luigis_mansion:entities/bowser/battle_intro/hidden
execute if entity @s[tag=decapitate] run function luigis_mansion:entities/bowser/tick/hidden/decapitate
execute if entity @s[tag=intro_done,tag=!grabbing_head,tag=!decapitate,tag=king_boo_dead] unless entity @e[tag=king_boo,limit=1] run function luigis_mansion:entities/bowser/dying
execute if entity @s[tag=intro_done,tag=!grabbing_head,tag=!decapitate,tag=!king_boo_dead] unless entity @e[tag=king_boo,limit=1] run function luigis_mansion:entities/bowser/tick/hidden/headed_tick
execute if entity @s[tag=intro_done,tag=grabbing_head] unless entity @e[tag=king_boo,limit=1] run function luigis_mansion:entities/bowser/grabbing_head
execute if entity @s[tag=intro_done,tag=!decapitate] if entity @e[tag=king_boo,limit=1] run function luigis_mansion:entities/bowser/tick/hidden/headless_tick

execute unless entity @e[tag=king_boo,limit=1] if entity @s[tag=!walk,tag=!run,tag=!jump,tag=!breathe_fire,tag=!vacuum,tag=!throw_spikes,tag=!intro,tag=!grabbing_head,tag=!decapitate,tag=!headless_run,tag=!king_boo_dead,tag=!look_around,tag=!turn_around,tag=!tail_attack] run function luigis_mansion:animations/bowser/idle

execute at @e[tag=this_model,tag=right_leg] positioned ^0.63 ^ ^0.7 run teleport @e[tag=this_model,tag=bowsers_shadow,limit=1] ~ 37 ~