package ru.first.dryCleaning.service;

import ru.first.dryCleaning.model.Post;
import ru.first.dryCleaning.model.User;

import java.util.List;

public interface IUserService {
    public User getAuthUser();

    public User findUserById(Long userId);

    public List<User> allUsers() ;

    public boolean createUser(User user);

    public User saveUser(User user);

    public boolean deleteUser(Long userId);

    List<Post> getPosts(Long userId);

}
