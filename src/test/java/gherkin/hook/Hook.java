package gherkin.hook;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import lombok.extern.java.Log;

@Log
public class Hook {

    @Before()
    public void init(Scenario scenario) {
        log.info(String.format("TESTE INICIADO: %s", scenario.getName()));
    }

    @After()
    public void cleanUp(Scenario scenario) {
        log.info(String.format("TESTE FINALIZADO: %s", scenario.getName()));
        log.info(String.format("TESTE STATUS: %s", scenario.getStatus()));
    }

}
