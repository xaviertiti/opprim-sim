// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package eu.musesproject.server.rt2ae;

import eu.musesproject.server.rt2ae.Riskinformation;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Riskinformation_Roo_Jpa_Entity {
    
    declare @type: Riskinformation: @Entity;
    
    declare @type: Riskinformation: @Table(name = "riskinformation");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "riskinformation_id")
    private Integer Riskinformation.riskinformationId;
    
    public Integer Riskinformation.getRiskinformationId() {
        return this.riskinformationId;
    }
    
    public void Riskinformation.setRiskinformationId(Integer id) {
        this.riskinformationId = id;
    }
    
}
