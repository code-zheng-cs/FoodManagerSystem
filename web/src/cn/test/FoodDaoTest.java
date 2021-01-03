package cn.test;

import cn.bean.Food;
import cn.dao.FoodDao;
import cn.dao.impl.FoodDaoImpl;
import org.junit.Test;

import java.math.BigDecimal;

import static org.junit.Assert.*;

public class FoodDaoTest {

    private FoodDao foodDao = new FoodDaoImpl();

    @Test
    public void addFood() {
        foodDao.addFood(new Food(null,"为什么", "191125", new BigDecimal(9999),1100000,0,null
                ));
    }

    @Test
    public void deleteBookById() {
        foodDao.deleteFoodById(3);
    }

    @Test
    public void updateBook() {
        foodDao.updateFood(new Food(3,"帅！", "国哥", new BigDecimal(9999),1100000,0,null
        ));
    }

    @Test
    public void queryBookById() {
        System.out.println( foodDao.queryFoodById(21) );
    }

    @Test
    public void queryBooks() {
        for (Food queryBook : foodDao.queryFoods()) {
            System.out.println(queryBook);
        }
    }
}