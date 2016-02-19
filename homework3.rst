========================
Homework 3 for COSC-2305
========================

Created by Julio Andrade.

This is homework 3 in which we were assigned to do some research on measurement units, terminology, and some minor calculations that simulate the speed of of an electronic wave going through wire.


***********************
Basic Measurement Units
***********************

+-------------------------+----------------------------------+
| Measurement Units       |              Is equal to         |
+=========================+==================================+
| 1 meter                 |   39.3701 inches or 3.28084 feet |
+-------------------------+----------------------------------+
| 1 mile                  |             5,280 feet           |
+-------------------------+----------------------------------+
| 1 mile                  |           1609.34 meters         | 
+-------------------------+----------------------------------+
| Circumference of Earth  |           24,901 miles           | 
+-------------------------+----------------------------------+

*****************
Basic Terminology
*****************

+-------------------------+----------------------------------+
| Terminology             |              Is equal to         |
+=========================+==================================+
| 1 yotta something       |   10^24 times something          |
+-------------------------+----------------------------------+
| 1 kilo something        |   1000 times something           |
+-------------------------+----------------------------------+
| 1 hecto something       |   100 times something            | 
+-------------------------+----------------------------------+
| 1 deca something        |   10 times something             | 
+-------------------------+----------------------------------+
|         something       |             something            |
+-------------------------+----------------------------------+
| 1 milli something       |           1/1000 of something    | 
+-------------------------+----------------------------------+
| 1 micro something       |           1/1000000 of something | 
+-------------------------+----------------------------------+
| 1 nano something        | 1/1000000000 of something        | 
+-------------------------+----------------------------------+
| 1 pico something        | 1/1000000000000 of something     | 
+-------------------------+----------------------------------+

*****************
Speed of Light
*****************

From previous Physics class, I know that the speed of light is a constant: ``c``

**c: 2.998*10^8 m/s**

Therefore, if we multiply the above number by the amount of meters per mile (**1609.34**) then we should get out correct answer.

Similarly, speed of light is constant c = 2.998 * 10^8 m/s ----> 2.998 * 10^5 km/s since we just need to convert from m/s to km/s

+-------------------------+----------------------------------+
| Speed of light          |              Units               |
+=========================+==================================+
| 186,287.54              |              mi/s                |
+-------------------------+----------------------------------+
| 2.998*10^5              |              km/s                |
+-------------------------+----------------------------------+

***************************
Speed of Electronic Signals
***************************
Assuming electronic waves move through wire at the speed of light:

How far an electronic signal can move through a wire:

+-------------------------+----------------------------------+
| In this amount of time  |             In these units       |
+=========================+==================================+
| 1 nanosecond            |   11.803 inches                  |
+-------------------------+----------------------------------+
| 1 microsecond           |   983.596 feet                   |
+-------------------------+----------------------------------+
| 1 millisecond           |   186.288 miles                  | 
+-------------------------+----------------------------------+
| 1 second                |   186,287.546 miles              | 
+-------------------------+----------------------------------+
| 1 second                |   7481 times around earth        | 
+-------------------------+----------------------------------+

**1st Entry**: We solve by doing (c / 1000000000) * 39.3701 = 11.803 inches in a nanosecond

**2nd Entry**: 2.998 * 10^8 / (1000000) = 983.596 feet in a microsecond

**3rd Entry**: 2.998 * 10^8 / 1000 = is 2.998 * 10^5 m/s, therefore, dividing by 1609.34 = 186.288 miles in millisecond

**4th entry**: 2.998 * 10^8 m /s * (1609.34) = 186287.546 miles

**5th Entry**: 186.287.436 / 24,901 = 7,481 times around the earth.


***************************
Haswell GT2-4C Chip
***************************

Information received from `here. <http://www.anandtech.com/show/7003/the-haswell-review-intel-core-i74770k-i54560k-tested/5>`_


+-------------------------+----------------------------------+
| Info                    |              Answer              |
+=========================+==================================+
| Transistor count        |              1.4 Billion         |
+-------------------------+----------------------------------+
| Manufacturing Process   |             22 nm                |
+-------------------------+----------------------------------+
| Die size                |             177mm^2              |
+-------------------------+----------------------------------+
| Transistor signal speed |  182870 * 10^-12 m/s             |
+-------------------------+----------------------------------+

On the last one: transistor side length: 6.4151 m or .00641m (following formula sqrt(a/6) where a is the surface area (264*10^-3 m).
