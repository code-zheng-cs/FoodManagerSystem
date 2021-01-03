package cn.dao.impl;

import cn.bean.Food;
import cn.dao.FoodDao;
import java.util.List;

public class FoodDaoImpl extends BaseDao implements FoodDao {
    @Override
    public int addFood(Food food) {

        String sql = "insert into t_food(`name`,`brand`,`price`,`sales`,`stock`,`img_path`) values(?,?,?,?,?,?)";

        return update(sql, food.getName(),food.getBrand(),food.getPrice(),food.getSales(),food.getStock(),food.getImgPath());

    }

    @Override
    public int deleteFoodById(Integer id) {
        String sql = "delete from t_food where id = ?";
        return update(sql, id);
    }

    @Override
    public int updateFood(Food food) {
        String sql = "update t_food set `name`=?,`brand`=?,`price`=?,`sales`=?,`stock`=?,`img_path`=? where id = ?";
        return update(sql,food.getName(),food.getBrand(),food.getPrice(),food.getSales(),food.getStock(),food.getImgPath(),food.getId());
    }

    @Override
    public Food queryFoodById(Integer id) {
        String sql = "select `id` , `name` , `brand` , `price` , `sales` , `stock` , `img_path` imgPath from t_food where id = ?";
        return queryForOne(Food.class, sql,id);
    }

    @Override
    public List<Food> queryFoods() {
        String sql = "select `id` , `name` , `brand` , `price` , `sales` , `stock` , `img_path` imgPath from t_food";
        return queryForList(Food.class, sql);
    }


}
