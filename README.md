# Daily Minute Countdown

This app started as an idea for a screen-saver, but I haven't written screen savers before, and I was having 
a bit of difficulty getting everything working with Swift and the current frameworks, so I pivoted and
wrote a super dirty SwiftUI app that can run in the background instead.

## Motivation

Maybe I'm weird, but I like 24 hour clocks, and I like thinking in terms of overall minutes in the day better
than the 12 hour system that is typically used.  For me, I'm always working on optimizing my time and effort
on things, and being able to easily track how many minutes passed from the beginning of a task to my current
state is extremely helpful.

I tend to think of time more spacially than some, I suspect, and so for me it is helpful to have a different
form of representation for it.

## Current Features

- Countdown timer (in minutes) based on midnight, local time.
- Native support for system theme (automatically switches to dark mode)

## Future

I plan to turn this into an actual application as I have time.  I want to show an overall scale of the minutes
in the day and a current location indicator.  I also want to add the ability to insert pointers as a way to 
run timers against the main count.
