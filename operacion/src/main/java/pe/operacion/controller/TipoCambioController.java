package pe.operacion.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import pe.operacion.model.dto.OperacionDto;
import pe.operacion.model.dto.TipoCambioEntity;
import pe.operacion.service.TipoCambioService;

import java.util.List;
//import io.reactivex.Single;


@RestController
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT, RequestMethod.PATCH})
@RequestMapping("TipoCambio")
public class TipoCambioController {

    private Logger logger = LoggerFactory.getLogger(TipoCambioController.class);

    @Autowired
    private TipoCambioService tipoCambioService;



    @GetMapping(path = "/listar")
    public ResponseEntity<List<OperacionDto>> listar() {
        logger.info("TipoCambioController - /Listar", "Listar");
        List<TipoCambioEntity> response = null;
        try {
            response = tipoCambioService.listar();
            logger.info("TipoCambioController - Listar", "Proceso realizado correctamente");
            return new ResponseEntity(response, HttpStatus.OK);
        } catch (Exception e) {
            logger.error("TipoCambioController - Listar", "Ocurrió un error :" + e.getMessage());
            return new ResponseEntity(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

}
