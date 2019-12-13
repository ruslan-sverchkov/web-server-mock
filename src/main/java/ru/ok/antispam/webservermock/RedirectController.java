package ru.ok.antispam.webservermock;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
public class RedirectController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView model = new ModelAndView();
        model.setViewName("index");
        return model;
    }

    @RequestMapping(value = "/redirect/window/location", method = RequestMethod.GET)
    public ModelAndView windowLocation(@RequestParam(value = "redirectId", required = false) Integer redirectId,
                                       @RequestParam(value = "redirectsNumber") int redirectsNumber,
                                       @RequestParam(value = "timeoutMillis", required = false) Integer timeoutMillis,
                                       RedirectAttributes redirectAttributes) throws InterruptedException {
        return javascriptRedirect(redirectId, redirectsNumber, timeoutMillis, "windowLocation");
    }

    @RequestMapping(value = "/redirect/window/location/href", method = RequestMethod.GET)
    public ModelAndView windowLocationHref(@RequestParam(value = "redirectId", required = false) Integer redirectId,
                                           @RequestParam(value = "redirectsNumber") int redirectsNumber,
                                           @RequestParam(value = "timeoutMillis", required = false) Integer timeoutMillis,
                                           RedirectAttributes redirectAttributes) throws InterruptedException {
        return javascriptRedirect(redirectId, redirectsNumber, timeoutMillis, "windowLocationHref");
    }

    @RequestMapping(value = "/redirect/window/location/replace", method = RequestMethod.GET)
    public ModelAndView windowLocationReplace(@RequestParam(value = "redirectId", required = false) Integer redirectId,
                                              @RequestParam(value = "redirectsNumber") int redirectsNumber,
                                              @RequestParam(value = "timeoutMillis", required = false) Integer timeoutMillis,
                                              RedirectAttributes redirectAttributes) throws InterruptedException {
        return javascriptRedirect(redirectId, redirectsNumber, timeoutMillis, "windowLocationReplace");
    }

    @RequestMapping(value = "/redirect/document/location", method = RequestMethod.GET)
    public ModelAndView documentLocation(@RequestParam(value = "redirectId", required = false) Integer redirectId,
                                         @RequestParam(value = "redirectsNumber") int redirectsNumber,
                                         @RequestParam(value = "timeoutMillis", required = false) Integer timeoutMillis,
                                         RedirectAttributes redirectAttributes) throws InterruptedException {
        return javascriptRedirect(redirectId, redirectsNumber, timeoutMillis, "documentLocation");
    }

    @RequestMapping(value = "/redirect/document/location/href", method = RequestMethod.GET)
    public ModelAndView documentLocationHref(@RequestParam(value = "redirectId", required = false) Integer redirectId,
                                             @RequestParam(value = "redirectsNumber") int redirectsNumber,
                                             @RequestParam(value = "timeoutMillis", required = false) Integer timeoutMillis,
                                             RedirectAttributes redirectAttributes) throws InterruptedException {
        return javascriptRedirect(redirectId, redirectsNumber, timeoutMillis, "documentLocationHref");
    }

    private ModelAndView javascriptRedirect(Integer redirectId,
                                            int redirectsNumber,
                                            Integer timeoutMillis,
                                            String documentLocation) {
        if (redirectId == null) {
            redirectId = 0;
        }
        if (redirectId < redirectsNumber) {
            ModelAndView modelAndView = new ModelAndView(documentLocation);
            modelAndView.addObject("redirectsNumber", redirectsNumber);
            modelAndView.addObject("redirectId", redirectId + 1);
            modelAndView.addObject("timeoutMillis", timeoutMillis);
            return modelAndView;
        }
        ModelAndView modelAndView = new ModelAndView("redirectCompleted");
        modelAndView.addObject("redirects", redirectsNumber);
        return modelAndView;
    }

    @RequestMapping(value = "/redirect/server", method = RequestMethod.GET)
    public ModelAndView performServerRedirect(@RequestParam(value = "redirectId", required = false) Integer redirectId,
                                              @RequestParam(value = "redirectsNumber") int redirectsNumber,
                                              RedirectAttributes redirectAttributes,
                                              HttpServletRequest request) {
        if (redirectId == null) {
            redirectId = 0;
        }
        if (redirectId < redirectsNumber) {
            redirectAttributes.addAttribute("redirectsNumber", redirectsNumber);
            redirectAttributes.addAttribute("redirectId", redirectId + 1);
            return new ModelAndView("redirect:/redirect/server");
        } else {
            ModelAndView modelAndView = new ModelAndView("redirectCompleted");
            modelAndView.addObject("redirects", redirectsNumber);
            return modelAndView;
        }
    }

}