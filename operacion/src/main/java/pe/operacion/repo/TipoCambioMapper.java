package pe.operacion.repo;

import org.apache.ibatis.annotations.Mapper;
import pe.operacion.model.dto.OperacionEntity;
import pe.operacion.model.dto.TipoCambioEntity;

@Mapper
public interface TipoCambioMapper {
    void listar(TipoCambioEntity param);

}
