scoreboard players set #temp Time 0
function e3_demo:selection_menu/gallery_trophy/get_count/basher
execute if score #temp Time matches 20.. run advancement grant @a only e3_demo:e3_demo/heavy_heart
scoreboard players reset #temp Time
scoreboard players reset #temp Money