// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pets.web;

import com.pets.domain.Owner_;
import com.pets.domain.Pet;
import com.pets.domain.Visit;
import com.pets.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Owner_, String> ApplicationConversionServiceFactoryBean.getOwner_ToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.pets.domain.Owner_, java.lang.String>() {
            public String convert(Owner_ owner_) {
                return new StringBuilder().append(owner_.getFirstName()).toString();
            }
        };
    }
    
    public Converter<Long, Owner_> ApplicationConversionServiceFactoryBean.getIdToOwner_Converter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.pets.domain.Owner_>() {
            public com.pets.domain.Owner_ convert(java.lang.Long id) {
                return Owner_.findOwner_(id);
            }
        };
    }
    
    public Converter<String, Owner_> ApplicationConversionServiceFactoryBean.getStringToOwner_Converter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.pets.domain.Owner_>() {
            public com.pets.domain.Owner_ convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Owner_.class);
            }
        };
    }
    
    public Converter<Pet, String> ApplicationConversionServiceFactoryBean.getPetToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.pets.domain.Pet, java.lang.String>() {
            public String convert(Pet pet) {
                return new StringBuilder().append(pet.getName_()).toString();
            }
        };
    }
    
    public Converter<Long, Pet> ApplicationConversionServiceFactoryBean.getIdToPetConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.pets.domain.Pet>() {
            public com.pets.domain.Pet convert(java.lang.Long id) {
                return Pet.findPet(id);
            }
        };
    }
    
    public Converter<String, Pet> ApplicationConversionServiceFactoryBean.getStringToPetConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.pets.domain.Pet>() {
            public com.pets.domain.Pet convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Pet.class);
            }
        };
    }
    
    public Converter<Visit, String> ApplicationConversionServiceFactoryBean.getVisitToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.pets.domain.Visit, java.lang.String>() {
            public String convert(Visit visit) {
                return new StringBuilder().append(visit.getVisited()).toString();
            }
        };
    }
    
    public Converter<Long, Visit> ApplicationConversionServiceFactoryBean.getIdToVisitConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.pets.domain.Visit>() {
            public com.pets.domain.Visit convert(java.lang.Long id) {
                return Visit.findVisit(id);
            }
        };
    }
    
    public Converter<String, Visit> ApplicationConversionServiceFactoryBean.getStringToVisitConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.pets.domain.Visit>() {
            public com.pets.domain.Visit convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Visit.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getOwner_ToStringConverter());
        registry.addConverter(getIdToOwner_Converter());
        registry.addConverter(getStringToOwner_Converter());
        registry.addConverter(getPetToStringConverter());
        registry.addConverter(getIdToPetConverter());
        registry.addConverter(getStringToPetConverter());
        registry.addConverter(getVisitToStringConverter());
        registry.addConverter(getIdToVisitConverter());
        registry.addConverter(getStringToVisitConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
