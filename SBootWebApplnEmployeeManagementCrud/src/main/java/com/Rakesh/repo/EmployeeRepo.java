package com.Rakesh.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.Rakesh.model.EmployeeModel;
@Repository
public interface EmployeeRepo extends CrudRepository<EmployeeModel, Integer> 
{

}
