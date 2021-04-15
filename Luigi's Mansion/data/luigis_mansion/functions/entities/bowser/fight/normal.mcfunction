execute if entity @s[tag=!intro_done] run function luigis_mansion:entities/bowser/battle_intro/normal
execute if entity @s[tag=decapitate] run function luigis_mansion:entities/bowser/fight/normal/decapitate
execute if entity @s[tag=intro_done] unless entity @e[tag=king_boo,limit=1] run function luigis_mansion:entities/bowser/fight/normal/headed_tick
execute if entity @s[tag=intro_done] if entity @e[tag=king_boo,limit=1] run function luigis_mansion:entities/bowser/fight/normal/headless_tick