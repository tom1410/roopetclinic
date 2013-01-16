package com.pets.web;

import com.pets.domain.Visit;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/visits")
@Controller
@RooWebScaffold(path = "visits", formBackingObject = Visit.class)
public class VisitController {
}
