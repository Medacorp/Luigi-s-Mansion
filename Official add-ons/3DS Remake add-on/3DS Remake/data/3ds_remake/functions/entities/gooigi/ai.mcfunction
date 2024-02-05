execute facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~

execute if entity @s[tag=spawn_animation,scores={PositionX=1..}] run function 3ds_remake:entities/gooigi/spawn_animation