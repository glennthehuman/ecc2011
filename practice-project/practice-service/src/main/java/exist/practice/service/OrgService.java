package exist.practice.service;

import java.util.List;

import exist.practice.Org;


public interface OrgService {
	public List<Org> findAllOrg();

	public boolean addOrg(Org object);
	
	public boolean updateOrg(Org object);

	public boolean deleteOrg(long id, Class<Org> clazz);

	public List<Org> findOrg(String table, String column, String value);

}