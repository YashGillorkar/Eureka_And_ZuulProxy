package com.project.repostiory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.model.Enquiry;

@Repository
public interface EnquiryRepostiory extends JpaRepository<Enquiry, String>{

}
