package inter;

import bean.aplicationbean;
import bean.clientbean;
import bean.clientregbean;
import bean.deliverbean;
import bean.formbean;
import bean.managebillbean;
import bean.serbean;
import bean.teambean;
import bean.uploadbean;
import bean.uploadteambean;

public interface inter {
	 
	public int creg(clientregbean cb);
	
	public boolean clog(clientbean cb);
	
	public int form(formbean fb);
	
	public int ser(serbean sb);
	
	public int load(uploadbean ub);
	
	public int team(teambean tb);
	
	public boolean tlog(teambean ta);;

	public int send(uploadbean sb);
	
	public int del(deliverbean db);
	
	public int app(aplicationbean ap);
	
	public int bill(managebillbean up);
	public int upload(uploadteambean ub);

}
