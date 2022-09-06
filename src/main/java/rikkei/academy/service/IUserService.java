package rikkei.academy.service;

import rikkei.academy.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserService {

    void insertUser(User user);

    User selectUser(int id);

    List<User> selectAllUsers();

    boolean deleteUser(int id) throws SQLException;

    boolean updateUser(User user) throws SQLException;

    List<User> findByCountry(String country);
}
