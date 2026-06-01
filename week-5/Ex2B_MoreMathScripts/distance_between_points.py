# Distance Between Two Points

import math

x1 = 2
y1 = 3
x2 = 8
y2 = 11

distance = math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)

print("The distance between the two points is " + format(distance, ".2f"))