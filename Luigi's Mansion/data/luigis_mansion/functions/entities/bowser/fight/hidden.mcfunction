execute if entity @s[tag=!intro_done] run function #luigis_mansion:entities/bowser/battle_intro/hidden
execute if entity @s[tag=decapitate] run function luigis_mansion:entities/bowser/fight/hidden/decapitate
execute if entity @s[tag=intro_done] unless entity @e[tag=king_boo,limit=1] run function luigis_mansion:entities/bowser/fight/hidden/headed_tick
execute if entity @s[tag=intro_done] if entity @e[tag=king_boo,limit=1] run function luigis_mansion:entities/bowser/fight/hidden/headless_tick