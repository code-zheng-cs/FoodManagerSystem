package cn.service.impl;

import cn.bean.Food;
import cn.dao.FoodDao;
import cn.dao.impl.FoodDaoImpl;
import cn.service.FoodService;

import java.util.List;

public class FoodServiceImpl implements FoodService {
    private FoodDao foodDao =  new FoodDaoImpl();
    @Override
    public void addFood(Food food) {
            foodDao.addFood(food);
    }

    @Override
    public void deleteFoodById(Integer id) {
          foodDao.deleteFoodById(id);
    }

    @Override
    public void updateFood(Food food) {
          foodDao.updateFood(food);
    }

    @Override
    public Food queryFoodById(Integer id) {
        return foodDao.queryFoodById(id);
    }

    @Override
    public List<Food> queryFoods() {
        return foodDao.queryFoods();
    }
}
