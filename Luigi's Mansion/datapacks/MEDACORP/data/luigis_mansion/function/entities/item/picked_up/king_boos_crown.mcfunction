function luigis_mansion:items/money {namespace:"luigis_mansion",id:"red_diamond",value:5}
data modify storage luigis_mansion:data current_state.luigis_mansion.current_data.obtained_items merge value {king_boos_crown:1b}
execute if score #money_screen Selected matches 1 run tag @e[tag=luigi] add update_money_screen_gem
execute if score #money_screen Selected matches 1 run tag @e[tag=luigi] add update_money_screen_red_diamond