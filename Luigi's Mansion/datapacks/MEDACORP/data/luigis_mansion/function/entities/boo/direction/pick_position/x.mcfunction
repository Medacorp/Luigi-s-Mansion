$data modify entity @s data.boo_target.x set value $(min)
$execute store result entity @s data.boo_target.x int 1 run random value $(min)..$(max)