// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package eu.musesproject.server.rt2ae;

import eu.musesproject.server.rt2ae.Accessrequest;
import eu.musesproject.server.rt2ae.UserAction;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;

privileged aspect UserAction_Roo_DbManaged {
    
    @OneToMany(mappedBy = "useractionId")
    private Set<Accessrequest> UserAction.accessrequests;
    
    @Column(name = "id")
    private Integer UserAction.id;
    
    public Set<Accessrequest> UserAction.getAccessrequests() {
        return accessrequests;
    }
    
    public void UserAction.setAccessrequests(Set<Accessrequest> accessrequests) {
        this.accessrequests = accessrequests;
    }
    
    public Integer UserAction.getId() {
        return id;
    }
    
    public void UserAction.setId(Integer id) {
        this.id = id;
    }
    
}
