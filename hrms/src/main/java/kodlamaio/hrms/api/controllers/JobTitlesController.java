package kodlamaio.hrms.api.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kodlamaio.hrms.business.abstracts.JobService;
import kodlamaio.hrms.entites.concretes.Job;

@RestController
@RequestMapping("/api/job-title")
public class JobTitlesController {
	private JobService jobService;

	@Autowired
	public JobTitlesController(JobService jobService) {
		super();
		this.jobService = jobService;
	}
	
	@GetMapping("/listAll")
	public List<Job> listAll(){
		
		return this.jobService.listAll();
	}

}
