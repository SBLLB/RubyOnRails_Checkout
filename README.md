## Checkout System in Ruby

#### Project planning. Considerations prior to starting:

* Could use shopping cart gem? 
    * e.g. acts_as_shopping_cart / active-cart...
    * Prefer to build from scratch to demonstrate more of my base understanding of Ruby and RoR.  

* Flexibility needed in the future for promotions used. What types of discount code can there be? 
    * Buy X get X free (Buy 1 lavender flower, get 1 free) *QuantityBought, ItemBought, QuantityFree, ItemFree*
    * Buy X get X at £ (buy 2 or more lavender hearts then the price drops to £8.50) *QuantityBought, ItemBought, PromoPrice*   
    * Spend X get X% off. *TotalSpent, PercentDiscount*
    * Spend X get £X off. *TotalSpent, IntegerDiscount*

* The shopping cart. Store solely in session or use database? 
    * Storing soley in session would require storing cart items in a session hash. `(session[:cart] ||= {})` `Cart>>Product >> :productID, :quantity`

    * Storing in the database would mean only cart ID would need to be kept in the session. Would have to consider how to get rid of abandoned, neglected carts later. Get rid of old, unwanted data using a rake/cron job? Has benefits if you want users to be able to save their shopping carts between sessions... Or you want to keep shopping cart histories for your users/ run some analytics on shopping cart data? - i.e. see who’s not checking out.

* When do you instantiate a Checkout object? 
    * When cart's created? If so promo rules could change throughout the shopping cart's duration. Also keep in mind single responsibility. Checkout is for when you checkout, not to do with collating the items?
    * Treat cart and checkout separately. Cart can have running total function that returns current price based on current promo rules?

* How do you get a zero filled field such as 001 for the product codes?  
    * char_at(value, 000) function?




