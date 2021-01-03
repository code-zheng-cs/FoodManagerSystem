package cn.dao;

import cn.bean.Food;
import java.awt.print.Book;
import java.util.List;

public interface FoodDao {
    public int addFood(Food food);

    public int deleteFoodById(Integer id);

    public int updateFood(Food food);

    public Food queryFoodById(Integer id);

    public List<Food> queryFoods();


}
