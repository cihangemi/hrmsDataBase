package kodlamaio.hrms.dataAccess.abstracts;

import org.springframework.data.jpa.repository.JpaRepository;
import kodlamaio.hrms.entites.concretes.Job;

public interface JobDao extends JpaRepository<Job,Integer> {
	

}
