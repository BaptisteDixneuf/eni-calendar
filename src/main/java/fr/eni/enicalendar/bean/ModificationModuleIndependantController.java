package fr.eni.enicalendar.bean;

import fr.eni.enicalendar.persistence.app.entities.ModuleIndependant;
import fr.eni.enicalendar.service.ModuleIndependantsServiceInterface;
import fr.eni.enicalendar.utils.SessionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.Serializable;
import java.time.Duration;

@ManagedBean(name = "modificationModuleIndependantController")
@ViewScoped
public class ModificationModuleIndependantController implements Serializable {

    /**
     * Serial UID
     */
    private static final long serialVersionUID = 1L;

    private static final Logger LOGGER = LoggerFactory.getLogger(ModificationModuleIndependantController.class);

    @ManagedProperty(value = "#{moduleIndependantsService}")
    private ModuleIndependantsServiceInterface moduleIndependantsService;

    private ModuleIndependant module;
    private String typeAction;

    @PostConstruct
    public void setup() {
        LOGGER.info("ModificationModuleIndependantController setup");
        module = new ModuleIndependant();
        typeAction = SessionUtils.getAction();

        if (typeAction.equals("Modification")) {
            module = moduleIndependantsService.findById(Integer.parseInt(SessionUtils.getId()));
        }
    }

    public ModuleIndependantsServiceInterface getModuleIndependantsService() {
        return moduleIndependantsService;
    }

    public void setModuleIndependantsService(ModuleIndependantsServiceInterface moduleIndependantsService) {
        this.moduleIndependantsService = moduleIndependantsService;
    }

    public ModuleIndependant getModule() {
        return module;
    }

    public void setModule(ModuleIndependant module) {
        this.module = module;
    }


    public String getTypeAction() {
        return typeAction;
    }

    public void setTypeAction(String typeAction) {
        this.typeAction = typeAction;
    }


    /**
     * Permet de créer/modifier un moduleindependant
     *
     * @throws IOException
     */
    public void modifierModule() throws IOException {
        moduleIndependantsService.saveModule(module);

        FacesContext context = FacesContext.getCurrentInstance();
        context.getExternalContext().getFlash().setKeepMessages(true);
        context.addMessage("general",
                new FacesMessage(FacesMessage.SEVERITY_INFO, "Les informations ont bien été enregistrées!", ""));
        context.getExternalContext().redirect("/eni-calendar/views/gestionModulesIndependants.xhtml");
    }

    /**
     * Permet de créer/modifier un moduleindependant
     *
     * @throws IOException
     */
    public void calculDuree() throws IOException {
        Long diff = module.getDateFin().getTime() - module.getDateDebut().getTime();
        Integer duree = (diff.intValue()/ (1000 * 60 * 60 * 24)+1);
        module.setDuree(duree);
    }
}
