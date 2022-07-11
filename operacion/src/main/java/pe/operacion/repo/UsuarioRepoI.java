package pe.operacion.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import pe.operacion.model.Usuario;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepoI  extends JpaRepository<Usuario, Integer> {
	Usuario findOneByUsername(String username);
}
