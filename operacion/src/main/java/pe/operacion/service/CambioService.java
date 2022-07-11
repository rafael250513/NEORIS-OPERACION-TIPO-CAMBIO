
package pe.operacion.service;
import pe.operacion.model.ResultClassEntity;
import pe.operacion.model.dto.OperacionDto;
import pe.operacion.model.dto.OperacionEntity;

import java.util.List;

public interface CambioService {
    ResultClassEntity registrar(OperacionEntity operacionEntity);
    ResultClassEntity eliminar(OperacionEntity operacionEntity);
    List<OperacionDto> listarCambios(Integer idCambio);
    List<OperacionDto> listarCambiosPorTipo(String tipoCambio);
}
