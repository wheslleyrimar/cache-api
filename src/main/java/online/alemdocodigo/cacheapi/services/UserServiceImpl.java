package online.alemdocodigo.cacheapi.services;

import online.alemdocodigo.cacheapi.entities.User;
import online.alemdocodigo.cacheapi.repositories.IUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private IUserRepository repository;

    @Override
    public List<User> getAllUsers() {
        return repository.findAll();
    }

    @Override
    public User getUser(UUID id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public User createUser(User user) {
        return repository.save(user);
    }
}
