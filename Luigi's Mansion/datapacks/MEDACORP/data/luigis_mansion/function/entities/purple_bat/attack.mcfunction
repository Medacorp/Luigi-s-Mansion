data modify entity @s data.target_pos set from entity @e[tag=exact_same_room,tag=!spectator,tag=player,distance=..10,sort=nearest,limit=1] Pos
scoreboard players set @s TargetTask 3
$playsound $(namespace):entity.$(id).attack hostile @a[tag=same_room] ~ ~ ~ 1