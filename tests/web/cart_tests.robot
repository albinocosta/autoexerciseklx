*** Settings ***
Documentation   Adding a product to cart and checking the action

Resource        ../../resources/base.robot

Suite Setup     Access Webcommerce and Login

Suite Teardown  Clear Cart, Logout, And Close Browser

** Test Cases **
Successfuly Adding Products To Cart
    GIVEN that I navigate to Products Menubar
    AND added two products to cart
    WHEN I proceed to checkout
    I can find the products with right value in total