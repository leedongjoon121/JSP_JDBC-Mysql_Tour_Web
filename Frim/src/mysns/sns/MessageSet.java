package mysns.sns;

import java.util.ArrayList;


public class MessageSet {
	
	private Message message;
	
	
	private ArrayList<Reply> rlist = new ArrayList<Reply>();
	
	public Message getMessage() {
		return message;
	}
	public void setMessage(Message message) {
		this.message = message;
	}
	public ArrayList<Reply> getRlist() {
		return rlist;
	}
	public void setRlist(ArrayList<Reply> rlist) {
		this.rlist = rlist;
	}
}
