// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package eu.musesproject.server.rt2ae;

import eu.musesproject.server.rt2ae.Accessrequest;
import eu.musesproject.server.rt2ae.Asset;
import eu.musesproject.server.rt2ae.Riskinformation;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Riskinformation_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "accessrequest_id", referencedColumnName = "accessrequest_id", nullable = false)
    private Accessrequest Riskinformation.accessrequestId;
    
    @ManyToOne
    @JoinColumn(name = "asset_id", referencedColumnName = "asset_id", nullable = false)
    private Asset Riskinformation.assetId;
    
    @Column(name = "type", length = 45)
    @NotNull
    private String Riskinformation.type;
    
    @Column(name = "description", length = 45)
    @NotNull
    private String Riskinformation.description;
    
    @Column(name = "time")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Riskinformation.time;
    
    @Column(name = "probability")
    @NotNull
    private Double Riskinformation.probability;
    
    public Accessrequest Riskinformation.getAccessrequestId() {
        return accessrequestId;
    }
    
    public void Riskinformation.setAccessrequestId(Accessrequest accessrequestId) {
        this.accessrequestId = accessrequestId;
    }
    
    public Asset Riskinformation.getAssetId() {
        return assetId;
    }
    
    public void Riskinformation.setAssetId(Asset assetId) {
        this.assetId = assetId;
    }
    
    public String Riskinformation.getType() {
        return type;
    }
    
    public void Riskinformation.setType(String type) {
        this.type = type;
    }
    
    public String Riskinformation.getDescription() {
        return description;
    }
    
    public void Riskinformation.setDescription(String description) {
        this.description = description;
    }
    
    public Calendar Riskinformation.getTime() {
        return time;
    }
    
    public void Riskinformation.setTime(Calendar time) {
        this.time = time;
    }
    
    public Double Riskinformation.getProbability() {
        return probability;
    }
    
    public void Riskinformation.setProbability(Double probability) {
        this.probability = probability;
    }
    
}