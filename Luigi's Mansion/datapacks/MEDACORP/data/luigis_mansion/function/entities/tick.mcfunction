$function $(namespace):entities/$(id)/tick
$execute if entity @s[tag=collided] run function luigis_mansion:main/collide_freeze {namespace:"$(namespace)",id:"$(id)"}