package pe.operacion.service.impl;

import pe.operacion.model.ResultClassEntity;
import pe.operacion.model.dto.OperacionDto;
import pe.operacion.model.dto.OperacionEntity;
import pe.operacion.repo.OperacionMapper;
import pe.operacion.service.CambioService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CambioServiceImpl implements CambioService {

    private Logger logger = LoggerFactory.getLogger(CambioServiceImpl.class);

    @Autowired
    private OperacionMapper operacionMapper;

    @Override
    public ResultClassEntity registrar(OperacionEntity operacionEntity) {
        ResultClassEntity result = new ResultClassEntity();
        try {
            operacionMapper.insertOperacion(operacionEntity);
            result.setData(operacionEntity);
            result.setSuccess(true);
            result.setMessage("Se registro correctamente el cambio.");
            return result;
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            result.setSuccess(false);
            result.setMessage("Error al registrar el cambio.");
            return result;
        }
    }



    @Override
    public List<OperacionDto> listarCambios(Integer idOperacion) {
        ResultClassEntity result = new ResultClassEntity();
        List<OperacionDto> lista = new ArrayList<>();
        OperacionEntity operacion=new OperacionEntity();
        try {
            operacion.setIdOperacion(idOperacion);
            operacionMapper.listar(operacion);
            lista = operacion.getListaOperacion();
            result.setData(lista);
            result.setSuccess(true);
            result.setMessage("Se obtiene el listado correctamente.");
            return lista;
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            result.setSuccess(false);
            result.setMessage("Error al obtener el listado.");
            return lista;
        }
    }

    @Override
    public List<OperacionDto> listarCambiosPorTipo(String tipoCambio) {
        ResultClassEntity result = new ResultClassEntity();
        List<OperacionDto> lista = new ArrayList<>();
        OperacionEntity operacion=new OperacionEntity();
        try {
            operacion.setTipoCambio(tipoCambio);
            operacionMapper.listar(operacion);
            lista = operacion.getListaOperacion();
            result.setData(lista);
            result.setSuccess(true);
            result.setMessage("Se obtiene el listado correctamente.");
            return lista;
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            result.setSuccess(false);
            result.setMessage("Error al obtener el listado.");
            return lista;
        }
    }

    @Override
    public ResultClassEntity eliminar(OperacionEntity operacionEntity) {
        ResultClassEntity result = new ResultClassEntity();
        try {
            operacionMapper.deleteOperacion(operacionEntity);
            result.setData(operacionEntity);
            result.setSuccess(true);
            result.setMessage("Se elimino correctamente la operación.");
            return result;
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            result.setSuccess(false);
            result.setMessage("Error al eliminar la operación.");
            return result;
        }
    }




}
