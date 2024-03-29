Most hallways contain several room scores, this is so that moving through a hallway resets rooms around it and parts of the hallway that are not seen.

For example the back of the F1 hallway is reset if you're in the front, until you get to the connecting section.

This behavior is called a viewpoint: the room has a smaller score-giving area than load area; the latter of which contains other rooms (partially).

To make sure sounds can be heard through viewpoints, make sure to add the `<namespace>:main/get_same_room/viewpoints/<id>` function (where the variables are the mansion ID). This function basically means "if room score is A, it can also hear/be seen in room B".
For lab viewpoints, add the function to the `#luigis_mansion:main/get_same_room/lab_viewpoints` tag.

A viewpoint can be one-way, for example, the master bedroom loads the balcony, but the balcony does not load the master bedroom.