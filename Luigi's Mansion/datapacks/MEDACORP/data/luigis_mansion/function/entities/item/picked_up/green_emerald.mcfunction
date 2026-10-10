function luigis_mansion:items/money {namespace:"luigis_mansion",id:"green_emerald",value:800}
execute if score #money_screen Selected matches 1 run tag @e[tag=luigi] add update_money_screen_gem
execute if score #money_screen Selected matches 1 run tag @e[tag=luigi] add update_money_screen_green_emerald