package pe.operacion.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class Scheduler {
    private Logger logger = LoggerFactory.getLogger(Scheduler.class);
  //  @Autowired
  //  ISolicitudInformacionService iSolicitudInformacionService;

  /*  @Scheduled(cron = "0 0 12 ? * FRI")
    public void tareaNotificacion() {
        try {
            logger.info("Inicio programador de tareas");


            iSolicitudInformacionService.NotificacionAuto();

        } catch (Exception e) {
            logger.error("Exception tareaNotificacion: ", e);
        }
    }*/

}
