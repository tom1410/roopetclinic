package com.pets.web;

import com.pets.domain.Owner_;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/owner_s")
@Controller
@RooWebScaffold(path = "owner_s", formBackingObject = Owner_.class)
public class Owner_Controller {
}
