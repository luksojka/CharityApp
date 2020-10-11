package pl.coderslab.charity.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.charity.entity.Role;
import pl.coderslab.charity.entity.User;
import pl.coderslab.charity.repository.RoleRepository;
import pl.coderslab.charity.repository.UserRepository;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public User findByEmail (String username) {
        return userRepository.findByUsername(username);
    }

    public void registerUser (User user) {
        Role role = roleRepository.findRoleByName("ROLE_USER");
        List<Role> roles = new ArrayList<>();
        roles.add(role);
        user.setRoles(roles);
        user.setEnabled(1);
        userRepository.save(user);
    }

    public List<User> findAllByRole (Role role) { return userRepository.getUsersByRoles(role);}
}
