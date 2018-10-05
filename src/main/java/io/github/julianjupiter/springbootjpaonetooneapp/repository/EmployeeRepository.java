package io.github.julianjupiter.springbootjpaonetooneapp.repository;

import io.github.julianjupiter.springbootjpaonetooneapp.domain.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
}
