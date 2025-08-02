package online.alemdocodigo.cacheapi.services;

import online.alemdocodigo.cacheapi.entities.User;

import java.util.List;
import java.util.UUID;

public interface IUserService {
    public List<User> getAllUsers();
    public User getUser(UUID id);
    public User createUser(User user);
}
