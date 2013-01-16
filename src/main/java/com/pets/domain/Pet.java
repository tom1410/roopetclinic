package com.pets.domain;

import javax.persistence.ManyToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "PET_SEQ")
public class Pet {

    private String name_;

    @ManyToOne
    private Owner_ owner_;

    @ManyToOne
    private Visit visit;
}
