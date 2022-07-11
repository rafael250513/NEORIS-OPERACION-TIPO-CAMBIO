package pe.operacion.repo;

import pe.operacion.model.Auditoria;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IAuditoriaRepository extends JpaRepository<Auditoria,Integer> {

}
