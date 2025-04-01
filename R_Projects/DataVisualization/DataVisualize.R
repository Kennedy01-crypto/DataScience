# more details on this link:
# https://r4ds.had.co.nz/data-visualisation.html
# install.packages("tidyverse")
library(tidyverse)
mpg
# displ, a car’s engine size, in litres.
# hwy, a car’s fuel efficiency on the highway, in miles per gallon (mpg).
new <- head(mpg)
print(new)
# Creating a ggplot
# To plot mpg, run this code to put displ on the x-axis and hwy on the y-axis:
plot <-ggplot(data = mpg) + #cretes an empty graph
            geom_point(mapping = aes(x = displ, y = hwy)) + #adds layers of points (scatterplot) to the graph
            labs(title = "Engine Size vs. Highway Fuel Efficiency",
                x = "Engine Displacement (litres)",
                y = "Highway Fuel Efficiency (mpg)")

# To display the plot, run this code: print(plot)
print(plot)

# The plot shows a negative relationship between engine size (displ) and fuel efficiency (hwy).
# In other words, cars with big engines use more fuel.

### A graphing template
#replace the bracket sections with a dataset, geom funvtion or a collection of mappings
# ggplot(data = <DATA>) + 
#   <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

newplot <- ggplot(data = mpg) + 
                geom_point(mapping = aes( x= hwy, y = cyl)) + 
                labs(title = "Highway mile per gallon vs. Number of Cylinders", 
                    x = "Highway miles per gallon", 
                    y = "Number of Cylinders")

print(newplot)

newplot2 <- ggplot(data = mpg) + 
                geom_point(mapping = aes( x= class, y = drv)) + 
                labs(title = "type of car vs. type of drive train", 
                    x = "type of car", 
                    y = "type of drive train")

print(newplot2)

# You can add a third variable, like class, to a two dimensional scatterplot by mapping it to an aesthetic.
# An aesthetic is a visual property of the objects in your plot. Aesthetics include things like the size, the shape, or the color of your points.
# You can convey information about your data by mapping the aesthetics in your plot to the variables in your dataset. 
# For example, you can map the colors of your points to the class variable to reveal the class of each car.

# Here is how you can do it:
newplot3 <- ggplot(data = mpg) + 
                geom_point(mapping = aes(x = displ, y = hwy , color = class))


print(newplot3)

# In the above example, we mapped class to the color aesthetic, but we could have mapped class to the size aesthetic in the same way. 
# In this case, the exact size of each point would reveal its class affiliation. 
# We get a warning here, because mapping an unordered variable (class) to an ordered aesthetic (size) is not a good idea.
newplot4 <- ggplot(data = mpg) + 
                geom_point(mapping = aes(x = displ, y = hwy, size = class))
                #> Warning: Using size for a discrete variable is not advised.

print(newplot4)

# Or we could have mapped class to the alpha aesthetic, 
# which controls the transparency of the points, 
# or to the shape aesthetic, which controls the shape of the points.

# Left
newAlpha <- ggplot(data = mpg) + 
            geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# Right
newShape <- ggplot(data = mpg) + 
            geom_point(mapping = aes(x = displ, y = hwy, shape = class))

print(newAlpha)
print(newShape)