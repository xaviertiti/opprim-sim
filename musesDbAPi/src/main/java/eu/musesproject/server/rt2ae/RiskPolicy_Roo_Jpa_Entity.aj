// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package eu.musesproject.server.rt2ae;

import eu.musesproject.server.rt2ae.RiskPolicy;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect RiskPolicy_Roo_Jpa_Entity {
    
    declare @type: RiskPolicy: @Entity;
    
    declare @type: RiskPolicy: @Table(name = "risk_policy");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "riskpolicy_id")
    private Integer RiskPolicy.riskpolicyId;
    
    public Integer RiskPolicy.getRiskpolicyId() {
        return this.riskpolicyId;
    }
    
    public void RiskPolicy.setRiskpolicyId(Integer id) {
        this.riskpolicyId = id;
    }
    
}
