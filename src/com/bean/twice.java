package com.bean;

import java.io.Serializable;

public class twice implements Serializable{
private int tuid;
private int tgid;
private boolean state;//ÊÇ·ñ´ò¹ıÕÛ
public int getTuid() {
	return tuid;
}
public void setTuid(int tuid) {
	this.tuid = tuid;
}
public int getTgid() {
	return tgid;
}
public void setTgid(int tgid) {
	this.tgid = tgid;
}

public boolean isState() {
	return state;
}
public void setState(boolean state) {
	this.state = state;
}
public twice(int tuid, int tgid, boolean state) {
	super();
	this.tuid = tuid;
	this.tgid = tgid;
	this.state = state;
}

public twice(int tuid, int tgid) {
	super();
	this.tuid = tuid;
	this.tgid = tgid;
}
public twice() {
	super();
}
@Override
public String toString() {
	return "twice [tuid=" + tuid + ", tgid=" + tgid + ", state=" + state + "]";
}

}
