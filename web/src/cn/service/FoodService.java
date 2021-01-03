package cn.service;

import cn.bean.Food;
import java.awt.print.Book;
import java.util.List;

public interface FoodService {
    public void addFood(Food food);

    public void deleteFoodById(Integer id);

    public void updateFood(Food food);

    public Food queryFoodById(Integer id);

    public List<Food> queryFoods();

}
