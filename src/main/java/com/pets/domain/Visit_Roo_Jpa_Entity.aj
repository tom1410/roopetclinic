// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pets.domain;

import com.pets.domain.Visit;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Version;

privileged aspect Visit_Roo_Jpa_Entity {
    
    declare @type: Visit: @Entity;
    
    @Id
    @SequenceGenerator(name = "visitGen", sequenceName = "VISIT_SEQ")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "visitGen")
    @Column(name = "id")
    private Long Visit.id;
    
    @Version
    @Column(name = "version")
    private Integer Visit.version;
    
    public Long Visit.getId() {
        return this.id;
    }
    
    public void Visit.setId(Long id) {
        this.id = id;
    }
    
    public Integer Visit.getVersion() {
        return this.version;
    }
    
    public void Visit.setVersion(Integer version) {
        this.version = version;
    }
    
}
