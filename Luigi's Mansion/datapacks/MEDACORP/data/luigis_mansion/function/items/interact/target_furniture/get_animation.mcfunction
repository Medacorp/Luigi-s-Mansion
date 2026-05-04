execute if entity @s[tag=cannot_search_when_open,tag=open] run tag @e[tag=searcher,limit=1] add not_facing
function luigis_mansion:entities/furniture/interact_animation
execute if entity @e[tag=interact,tag=manual,limit=1,tag=feet] as @e[tag=searcher,limit=1] unless data entity @s data.animation run function luigis_mansion:entities/luigi/animation/set/search/hump