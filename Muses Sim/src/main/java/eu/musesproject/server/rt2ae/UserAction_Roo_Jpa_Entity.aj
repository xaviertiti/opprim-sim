// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package eu.musesproject.server.rt2ae;

import eu.musesproject.server.rt2ae.UserAction;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect UserAction_Roo_Jpa_Entity {
    
    declare @type: UserAction: @Entity;
    
    declare @type: UserAction: @Table(name = "user_action");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "useraction_id")
    private Integer UserAction.useractionId;
    
    public Integer UserAction.getUseractionId() {
        return this.useractionId;
    }
    
    public void UserAction.setUseractionId(Integer id) {
        this.useractionId = id;
    }
    
}