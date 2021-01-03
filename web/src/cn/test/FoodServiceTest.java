package cn.test;


import cn.bean.Food;
import cn.service.FoodService;
import cn.service.impl.FoodServiceImpl;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;

public class FoodServiceTest {
    private FoodService foodService = new FoodServiceImpl();

    @Test
    public void addFood() {
        foodService.addFood(new Food(null,"牛奶","光明",new BigDecimal(68.8),20,256,null));
    }

    @Test
    public void deleteFoodById() {
        foodService.deleteFoodById(4);
    }

    @Test
    public void updateFood() {
    }

    @Test
    public void queryFoodById() {
    }

    @Test
    public void queryFoods() {
        List<Food> foods = foodService.queryFoods();
        Iterator iterator=foods.iterator();
        while(iterator.hasNext()){

            System.out.println(iterator.next());
        }
    }
}
