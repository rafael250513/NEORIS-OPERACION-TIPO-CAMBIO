package pe.operacion.service.impl;

import pe.operacion.dto.AuditoriaDTO;
import pe.operacion.model.Auditoria;
import pe.operacion.repo.IAuditoriaRepository;
import pe.operacion.service.IAuditoriaService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Log4j2
@Service
@RequiredArgsConstructor
public class IAuditoriaServiceImpl implements IAuditoriaService {

    @Autowired
    private IAuditoriaRepository iAuditoriaRepository;

    @Override
    public void registrarAuditoria(AuditoriaDTO auditoriaDTO) {
        Auditoria auditoria = new Auditoria();
        auditoria.setFechaRegistro(auditoriaDTO.getFechaRegistro());
        auditoria.setTipoModificacion(auditoriaDTO.getTipoModificacion());
        auditoria.setUsuario(auditoriaDTO.getUsuario());
        iAuditoriaRepository.save(auditoria);
    }
}
