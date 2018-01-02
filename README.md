# iPhoneX

Following today's guild, 
here is the git repo


What we covered:

**Introducing to Safe Area - the problem on iPhone x without safe area, and how safe area can solve it**


## Enable safe area in XIB/Storyboard
![screen shot 2018-01-02 at 11 07 54](https://user-images.githubusercontent.com/6288542/34480097-1a7a27a8-efb3-11e7-9a30-ec7e1815d9e1.png)


## Subview Safe Area Guide

**Subview safe area - a guide to help us keep elements on subviews and keep margin from safe area**


Select the Subview you wish to have a safe area enabled on, go to size tab and check the option **'Safe Area Layout Guide'**.

![screen shot 2018-01-02 at 11 59 17](https://user-images.githubusercontent.com/6288542/34480384-d0ad1944-efb4-11e7-99d8-565e2df53e9d.png)

**Now you will see another safe area that related to the subview, that you can have a constraints to**

![screen shot 2018-01-02 at 11 59 04](https://user-images.githubusercontent.com/6288542/34480605-1cebda60-efb6-11e7-8416-0c0a63aa0a60.png)


## backward compatibility in previous iOS versions 

**We discover how to support iOS 10 with creating another top constraint with the margin we want, and set the relation to equal-or-bigger with the safe area constraint - priority of 750**

```
1. Set top layout constraint, and make the 'Relation' Grater the or equal.
2. Set another top constraint to safe area, and set the priority to 750.
```
![screen shot 2018-01-02 at 12 16 24](https://user-images.githubusercontent.com/6288542/34480816-3f10b204-efb7-11e7-94b5-6e5b496cf5ec.png)


##  Expand views for iPhone X notch and bottom layout, constraints only.

**An elegant solution for the bottom view (it can be top as well), increasing the size of the view on iPhone X, with constraint only - we created constraint from *top of the view* to safe area bottom instead of changing the size of the view programmatically**

## Code!
**We saw some code, to have the same solutions we had in constraint - to use programmatically when we creating or manipulating a view programmatically**



Thanks for participating, let me know if you have any comments.
