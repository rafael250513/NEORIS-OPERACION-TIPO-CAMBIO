package pe.operacion.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pe.operacion.model.ResultClassEntity;
import pe.operacion.model.dto.TipoCambioEntity;
import pe.operacion.repo.TipoCambioMapper;
import pe.operacion.service.TipoCambioService;

import java.util.ArrayList;
import java.util.List;

@Service
public class TipoCambioServiceImpl implements TipoCambioService {

    private Logger logger = LoggerFactory.getLogger(TipoCambioServiceImpl.class);

    @Autowired
    private TipoCambioMapper tipoCambioMapper;

    @Override
    public List<TipoCambioEntity> listar() {
        ResultClassEntity result = new ResultClassEntity();
        List<TipoCambioEntity> lista = new ArrayList<>();
        TipoCambioEntity operacion=new TipoCambioEntity();
        try {
            tipoCambioMapper.listar(operacion);
            lista = operacion.getListaTipoCambio();
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



}
