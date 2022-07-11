package pe.operacion.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import pe.operacion.model.ResultClassEntity;
import pe.operacion.model.dto.OperacionDto;
import pe.operacion.model.dto.OperacionEntity;
import pe.operacion.service.CambioService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
//import io.reactivex.Single;


@RestController
@CrossOrigin(origins = "*", methods = {RequestMethod.GET, RequestMethod.POST, RequestMethod.PUT, RequestMethod.PATCH})
@RequestMapping("Cambio")
public class CambioController  {

    private Logger logger = LoggerFactory.getLogger(CambioController.class);

    @Autowired
    private CambioService cambioService;

    @PreAuthorize("@restAuthServiceImpl.hasAccess('admin')")
    @PostMapping(path = "/Registrar",consumes= MediaType.APPLICATION_JSON_VALUE,produces=MediaType.APPLICATION_JSON_VALUE )
    public org.springframework.http.ResponseEntity<ResultClassEntity> registrar(@RequestBody Map<String, Object> body) {
        logger.info("CambioController - Registrar", "Registrar cambio");
        ResultClassEntity entity = null;
        try {
            OperacionEntity operacionEntity = new OperacionEntity();
            operacionEntity.setMonto(BigDecimal.valueOf(Integer.parseInt(body.get("monto").toString())));
            operacionEntity.setTipoCambio(body.get("tipoCambio").toString());
            entity=cambioService.registrar(operacionEntity);
            return new org.springframework.http.ResponseEntity(entity, HttpStatus.OK);
        } catch (Exception e) {
            logger.error("CambioController - Registrar", "Ocurrió un error al registrar el cambio en :" + e.getMessage());
            return new org.springframework.http.ResponseEntity(entity, HttpStatus.BAD_REQUEST);
        }
    }

    @PreAuthorize("@restAuthServiceImpl.hasAccess('all')")
    @GetMapping(path = "/listar/cambios/")
    public ResponseEntity<List<OperacionDto>> listarCambios(@RequestParam (required = false) Integer idCambio) {
        logger.info("CambioController - /Listar/Cambios", idCambio);
        List<OperacionDto> response = null;
        try {
            response = cambioService.listarCambios(idCambio);
            logger.info("CambioController - /Listar/Cambios", "Proceso realizado correctamente");
            return new ResponseEntity(response, HttpStatus.OK);
        } catch (Exception e) {
            logger.error("CambioController - /Listar/Cambios", "Ocurrió un error :" + e.getMessage());
            return new ResponseEntity(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PreAuthorize("@restAuthServiceImpl.hasAccess('all')")
    @GetMapping(path = "/listar/cambiosPorTipo/")
    public ResponseEntity<List<OperacionDto>> listarCambiosPorTipo(@RequestParam (required = false) String tipoCambio) {
        logger.info("CambioController - /Listar/cambiosPorTipo", tipoCambio);
        List<OperacionDto> response = null;
        try {
            response = cambioService.listarCambiosPorTipo(tipoCambio);
            logger.info("CambioController - /Listar/cambiosPorTipo", "Proceso realizado correctamente");
            return new ResponseEntity(response, HttpStatus.OK);
        } catch (Exception e) {
            logger.error("CambioController - /Listar/cambiosPorTipo", "Ocurrió un error :" + e.getMessage());
            return new ResponseEntity(response, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PreAuthorize("@restAuthServiceImpl.hasAccess('admin')")
    @PostMapping(path = "/eliminar",consumes= MediaType.APPLICATION_JSON_VALUE,produces=MediaType.APPLICATION_JSON_VALUE )
    public org.springframework.http.ResponseEntity<ResultClassEntity> eliminar(@RequestBody Map<String, Object> body) {
        logger.info("CambioController - Eliminar", "Eliminar operacion");
        ResultClassEntity entity = null;
        try {
            OperacionEntity operacionEntity = new OperacionEntity();
            operacionEntity.setIdOperacion(Integer.parseInt(body.get("idOperacion").toString()));
            entity=cambioService.eliminar(operacionEntity);
            return new org.springframework.http.ResponseEntity(entity, HttpStatus.OK);
        } catch (Exception e) {
            logger.error("CambioController - Registrar", "Ocurrió un error al registrar el cambio en :" + e.getMessage());
            return new org.springframework.http.ResponseEntity(entity, HttpStatus.BAD_REQUEST);
        }
    }

}
