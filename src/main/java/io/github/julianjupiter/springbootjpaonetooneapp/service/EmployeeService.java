package io.github.julianjupiter.springbootjpaonetooneapp.service;

import io.github.julianjupiter.springbootjpaonetooneapp.domain.Employee;

import java.util.Optional;

public interface EmployeeService {

    Iterable<Employee> findAll();

    Optional<Employee> findById(int id);

    void save(Employee employee);

}
