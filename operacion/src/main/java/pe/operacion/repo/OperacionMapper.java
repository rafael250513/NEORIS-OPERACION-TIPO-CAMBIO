package pe.operacion.repo;

import pe.operacion.model.dto.OperacionEntity;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OperacionMapper {
    void insertOperacion(OperacionEntity operacionRequest);
    void listar(OperacionEntity operacionRequest);
    void listarPorTipo(OperacionEntity operacionRequest);
    void deleteOperacion(OperacionEntity operacionRequest);

}
