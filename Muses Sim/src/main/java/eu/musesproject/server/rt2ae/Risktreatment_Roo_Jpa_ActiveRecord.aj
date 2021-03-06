// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package eu.musesproject.server.rt2ae;

import eu.musesproject.server.rt2ae.Risktreatment;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Risktreatment_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Risktreatment.entityManager;
    
    public static final EntityManager Risktreatment.entityManager() {
        EntityManager em = new Risktreatment().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Risktreatment.countRisktreatments() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Risktreatment o", Long.class).getSingleResult();
    }
    
    public static List<Risktreatment> Risktreatment.findAllRisktreatments() {
        return entityManager().createQuery("SELECT o FROM Risktreatment o", Risktreatment.class).getResultList();
    }
    
    public static Risktreatment Risktreatment.findRisktreatment(Integer risktreatmentId) {
        if (risktreatmentId == null) return null;
        return entityManager().find(Risktreatment.class, risktreatmentId);
    }
    
    public static List<Risktreatment> Risktreatment.findRisktreatmentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Risktreatment o", Risktreatment.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Risktreatment.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Risktreatment.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Risktreatment attached = Risktreatment.findRisktreatment(this.risktreatmentId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Risktreatment.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Risktreatment.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Risktreatment Risktreatment.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Risktreatment merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
