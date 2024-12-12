scoreboard players set @s TotalDamage 20
function luigis_mansion:entities/luigi/damage/drop_item with storage luigis_mansion:data current_state.current_data.drop_item_on_damage
scoreboard players reset @s TotalDamage
scoreboard players reset @s LastTotalDamage