execute if entity @s[tag=!furniture] run function luigis_mansion:items/poltergust_3000/effect_on_entity/root
execute if entity @s[tag=!furniture,tag=hit_by_poltergust] run function luigis_mansion:items/poltergust_3000/effect_on_entity/fire
execute if entity @s[tag=furniture] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/root
execute if entity @s[tag=furniture,tag=hit_by_poltergust] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/fire