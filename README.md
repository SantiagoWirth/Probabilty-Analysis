# Probabilty-Analysis
Analytical resolution and code modeling in R for the following probabilistical experiment:
Two balanced dice are available, one with 6 faces and the other pyramid-shaped with four faces. The experiment of randomly choosing a die and rolling it is repeated twice.

a) Find the probability of rolling the number 2.

b) Find the probability of having chosen the pyramid-shaped die at least once if the number 2 appears.

The code and PDF file are in spanish. I'll include an english translation for the description of the code modeling here:

Item A:
For part A, we first simulate the random selection of a die and its roll. Then we repeat this process. Afterward, we check if a 2 was rolled in at least one of these two attempts. If a 2 is rolled, we record this by assigning the value 1 to an empty vector. Finally, we calculate the requested probability by repeating this experiment a thousand times, summing the instances where at least one 2 was rolled in those thousand experiments (favorable cases), and dividing the result by a thousand (total cases). Based on the Law of Large Numbers, this result should probabilistically approach the actual probability of rolling a 2, and by observing the results, we confirm that it does. The following graph illustrates how the probability converges to the real value as the number of repetitions increases.
Item B:
For this section, we repeat the experiment explained in section A, but now if the pyramid-shaped die is rolled, it yields values from 1 to 4, whereas if the six-sided die is rolled, it is not useful for our experiment, so we record a value of 0. Next, if at least one 2 was rolled and the pyramid-shaped die was chosen at least once, we record it with a value of 1. Finally, we calculate again the probability of having chosen the pyramid-shaped die at least once if at least one 2 was rolled, based on the Law of Large Numbers. This involves summing the number of favorable cases divided by the total number of attempts. Once again, the probability tends towards the correct value as n tends to infinity. The following graph illustrates how the probability converges to the correct value as the number of repetitions increases.
