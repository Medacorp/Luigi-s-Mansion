$data modify entity @s data.boo_target.y set value $(min)
$execute store result entity @s data.boo_target.y int 1 run random value $(min)..$(max)