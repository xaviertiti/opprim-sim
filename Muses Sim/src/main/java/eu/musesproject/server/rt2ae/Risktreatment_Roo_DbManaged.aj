// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package eu.musesproject.server.rt2ae;

import eu.musesproject.server.rt2ae.Riskcommunication;
import eu.musesproject.server.rt2ae.Risktreatment;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect Risktreatment_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "riskcommunication_id", referencedColumnName = "riskcommunication_id", nullable = false)
    private Riskcommunication Risktreatment.riskcommunicationId;
    
    @Column(name = "textualdescription", length = 255)
    @NotNull
    private String Risktreatment.textualdescription;
    
    public Riskcommunication Risktreatment.getRiskcommunicationId() {
        return riskcommunicationId;
    }
    
    public void Risktreatment.setRiskcommunicationId(Riskcommunication riskcommunicationId) {
        this.riskcommunicationId = riskcommunicationId;
    }
    
    public String Risktreatment.getTextualdescription() {
        return textualdescription;
    }
    
    public void Risktreatment.setTextualdescription(String textualdescription) {
        this.textualdescription = textualdescription;
    }
    
}
