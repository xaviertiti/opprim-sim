// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package eu.musesproject.server.rt2ae;

import eu.musesproject.server.rt2ae.Accessrequest;
import eu.musesproject.server.rt2ae.Asset;
import eu.musesproject.server.rt2ae.Opportunity;
import eu.musesproject.server.rt2ae.Riskinformation;
import eu.musesproject.server.rt2ae.SecurityIncident;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect Asset_Roo_DbManaged {
    
    @OneToMany(mappedBy = "assetId")
    private Set<Accessrequest> Asset.accessrequests;
    
    @OneToMany(mappedBy = "assetId")
    private Set<Riskinformation> Asset.riskinformations;
    
    @OneToMany(mappedBy = "assetsId")
    private Set<SecurityIncident> Asset.securityIncidents;
    
    @ManyToOne
    @JoinColumn(name = "opportunityid", referencedColumnName = "opportunity_id")
    private Opportunity Asset.opportunityid;
    
    @Column(name = "assetName", length = 45)
    @NotNull
    private String Asset.assetName;
    
    @Column(name = "description", length = 255)
    @NotNull
    private String Asset.description;
    
    @Column(name = "value")
    @NotNull
    private Double Asset.value;
    
    @Column(name = "confidential_level", length = 20)
    @NotNull
    private String Asset.confidentialLevel;
    
    @Column(name = "location", length = 255)
    @NotNull
    private String Asset.location;
    
    public Set<Accessrequest> Asset.getAccessrequests() {
        return accessrequests;
    }
    
    public void Asset.setAccessrequests(Set<Accessrequest> accessrequests) {
        this.accessrequests = accessrequests;
    }
    
    public Set<Riskinformation> Asset.getRiskinformations() {
        return riskinformations;
    }
    
    public void Asset.setRiskinformations(Set<Riskinformation> riskinformations) {
        this.riskinformations = riskinformations;
    }
    
    public Set<SecurityIncident> Asset.getSecurityIncidents() {
        return securityIncidents;
    }
    
    public void Asset.setSecurityIncidents(Set<SecurityIncident> securityIncidents) {
        this.securityIncidents = securityIncidents;
    }
    
    public Opportunity Asset.getOpportunityid() {
        return opportunityid;
    }
    
    public void Asset.setOpportunityid(Opportunity opportunityid) {
        this.opportunityid = opportunityid;
    }
    
    public String Asset.getAssetName() {
        return assetName;
    }
    
    public void Asset.setAssetName(String assetName) {
        this.assetName = assetName;
    }
    
    public String Asset.getDescription() {
        return description;
    }
    
    public void Asset.setDescription(String description) {
        this.description = description;
    }
    
    public Double Asset.getValue() {
        return value;
    }
    
    public void Asset.setValue(Double value) {
        this.value = value;
    }
    
    public String Asset.getConfidentialLevel() {
        return confidentialLevel;
    }
    
    public void Asset.setConfidentialLevel(String confidentialLevel) {
        this.confidentialLevel = confidentialLevel;
    }
    
    public String Asset.getLocation() {
        return location;
    }
    
    public void Asset.setLocation(String location) {
        this.location = location;
    }
    
}
