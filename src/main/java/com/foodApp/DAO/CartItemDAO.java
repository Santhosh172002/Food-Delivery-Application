package com.foodApp.DAO;

import java.util.ArrayList;

import com.foodApp.DTO.CartItems;

public interface CartItemDAO {
	
ArrayList<CartItems> getCartItems();
	
    CartItems getCartItems(int mId);

	boolean updateCartItems(CartItems ci);

	boolean remove(int mId);

	boolean addCartItems(int mId, int rId, String itemName, String itemImage, int itemPrice, int quantity);

	int getTotalBill();
	
	int getTotalItems();
	
	boolean clearCart();

}
