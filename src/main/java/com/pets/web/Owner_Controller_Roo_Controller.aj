// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.pets.web;

import com.pets.domain.Owner_;
import com.pets.web.Owner_Controller;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect Owner_Controller_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String Owner_Controller.create(@Valid Owner_ owner_, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, owner_);
            return "owner_s/create";
        }
        uiModel.asMap().clear();
        owner_.persist();
        return "redirect:/owner_s/" + encodeUrlPathSegment(owner_.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String Owner_Controller.createForm(Model uiModel) {
        populateEditForm(uiModel, new Owner_());
        return "owner_s/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String Owner_Controller.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("owner_", Owner_.findOwner_(id));
        uiModel.addAttribute("itemId", id);
        return "owner_s/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String Owner_Controller.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("owner_s", Owner_.findOwner_Entries(firstResult, sizeNo));
            float nrOfPages = (float) Owner_.countOwner_s() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("owner_s", Owner_.findAllOwner_s());
        }
        return "owner_s/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String Owner_Controller.update(@Valid Owner_ owner_, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, owner_);
            return "owner_s/update";
        }
        uiModel.asMap().clear();
        owner_.merge();
        return "redirect:/owner_s/" + encodeUrlPathSegment(owner_.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String Owner_Controller.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Owner_.findOwner_(id));
        return "owner_s/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String Owner_Controller.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Owner_ owner_ = Owner_.findOwner_(id);
        owner_.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/owner_s";
    }
    
    void Owner_Controller.populateEditForm(Model uiModel, Owner_ owner_) {
        uiModel.addAttribute("owner_", owner_);
    }
    
    String Owner_Controller.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
