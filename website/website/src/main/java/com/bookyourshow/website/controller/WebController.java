package com.bookyourshow.website.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.bookyourshow.website.entity.Profile;

//@EnableOAuth2Sso
@Controller
public class WebController {

	@Autowired
	private RestTemplate restTemplate;

	@RequestMapping("/")
	public String form() {
		return "Index";
	}

	@RequestMapping("/addProfile")
	public String createProfile(Model model) {
		model.addAttribute("profile", new Profile());
		return "CreateProfile";
	}

	@RequestMapping("/add")
	public String create(@ModelAttribute Profile profile, Model model) {
		restTemplate.postForEntity("http://localhost:5062/profiles", profile, null);
		model.addAttribute("message", "Your profile has been successfully created....!!!!");
		//model.addAttribute("profile", new Profile());
		return "CreateProfile";
	}
	
	@RequestMapping("/deleteProfile")
	public String deleteProfile() {
		return "DeleteProfile";
	}

	@RequestMapping("/delete")
	public String deleteProfileById(@RequestParam("profileId") int profileId, Model model) {
		//restTemplate.getForObject("http://localhost:5062/profiles" + profileId, Profile.class);
		restTemplate.delete("http://localhost:5062/profiles?profileId="+profileId);
		model.addAttribute("message", "Your profile has been successfully created....!!!!");
		return "DeleteProfile";
	}

	@RequestMapping("/updateProfileById")
    public String updateProfile() {
        return "UpdateProfileById";
    }
 
    @RequestMapping("/updateById")
    public String UpdateProfileById(@RequestParam("profileId") int profileId, Model model) {
        ResponseEntity<Profile> profile = restTemplate.getForEntity("http://localhost:5062/profiles/" + profileId,Profile.class);
        model.addAttribute("profile", profile.getBody());
        return "UpdateDetails";
    }
 
    @RequestMapping("/update")
    public ModelAndView update(@ModelAttribute Profile profile) {
        restTemplate.put("http://localhost:5062/profiles", profile);
        return new ModelAndView("ProfileDetails","profile",profile);
    }
 
}
