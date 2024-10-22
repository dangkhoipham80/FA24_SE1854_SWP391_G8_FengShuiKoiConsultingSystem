
package com.fengshuisystem.demo.service;

import com.fengshuisystem.demo.dto.request.PasswordCreationRequest;
import com.fengshuisystem.demo.dto.request.UserCreationRequest;
import com.fengshuisystem.demo.dto.request.UserUpdateRequest;
import com.fengshuisystem.demo.dto.response.UserResponse;


import java.util.List;

public interface UserService {
//    public UserResponse createUser(UserCreationRequest request);

    UserResponse createUser(UserCreationRequest request);
    void createPassword(PasswordCreationRequest request);
    UserResponse getMyInfo();
    UserResponse updateUser(String email, UserUpdateRequest request);
    UserResponse deleteUser(Integer userId);
    List<UserResponse> getUsers();
    UserResponse getUser(Integer id);
}