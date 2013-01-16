package com.pets.web;

import com.pets.domain.MyOwner;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/myowners")
@Controller
@RooWebScaffold(path = "myowners", formBackingObject = MyOwner.class)
public class MyOwnerController {
}
