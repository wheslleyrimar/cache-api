package online.alemdocodigo.cacheapi.repositories;

import online.alemdocodigo.cacheapi.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface IUserRepository extends JpaRepository<User, UUID> {

}
