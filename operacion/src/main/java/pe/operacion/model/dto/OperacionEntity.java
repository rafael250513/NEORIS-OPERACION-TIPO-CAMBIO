package pe.operacion.model.dto;

import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

public class OperacionEntity {
    private Integer opcion;
    private Integer idOperacion;
    private BigDecimal monto;
    private String tipoCambio;
    private Integer idOperacionOut;
    private Integer idUsuario;
    private List<OperacionDto> listaOperacion;

    public Integer getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

    public List<OperacionDto> getListaOperacion() {
        return listaOperacion;
    }

    public void setListaOperacion(List<OperacionDto> listaOperacion) {
        this.listaOperacion = listaOperacion;
    }

    public Integer getOpcion() {
        return opcion;
    }

    public void setOpcion(Integer opcion) {
        this.opcion = opcion;
    }

    public Integer getIdOperacion() {
        return idOperacion;
    }

    public void setIdOperacion(Integer idOperacion) {
        this.idOperacion = idOperacion;
    }

    public BigDecimal getMonto() {
        return monto;
    }

    public void setMonto(BigDecimal monto) {
        this.monto = monto;
    }

    public String getTipoCambio() {
        return tipoCambio;
    }

    public void setTipoCambio(String tipoCambio) {
        this.tipoCambio = tipoCambio;
    }

    public Integer getIdOperacionOut() {
        return idOperacionOut;
    }

    public void setIdOperacionOut(Integer idOperacionOut) {
        this.idOperacionOut = idOperacionOut;
    }
}
