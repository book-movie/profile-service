package com.bookyourticket.profile.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.bookyourticket.profile.entity.Address;
import com.bookyourticket.profile.entity.Profile;
import com.bookyourticket.profile.repository.ProfileRepository;

@Service
public class ProfileServiceImpl implements ProfileService {

	@Autowired
	private ProfileRepository repository;

	@Override
	public Optional<Profile> getProfileById(int profileId) {

		return repository.findById(profileId);
	}

	@Override
	public List<Profile> getAllProfile() {

		return repository.findAll();

	}

	@Override
	public Profile addProfile(Profile profile) {
		
		return repository.save(profile);		
	}

	@Override
	public void deleteProfile(Integer profileId) {

		repository.deleteById(profileId);
	}

	@Override
    public void updateProfile(Profile profile) {
        System.out.println("Updated profile: "+profile.getFullName());
        profile.setProfileId(profile.getProfileId());
        profile.setFullName(profile.getFullName());
        profile.setPassword(profile.getPassword());
        profile.setEmailId(profile.getEmailId());
        profile.setContactNumber(profile.getContactNumber());
        profile.setGender(profile.getGender());
        profile.setDateOfBirth(profile.getDateOfBirth());
        profile.setMaritalStatus(profile.getMaritalStatus());
        repository.save(profile);
    }
	

}