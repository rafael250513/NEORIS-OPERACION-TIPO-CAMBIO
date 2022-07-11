package pe.operacion.model.dto;

import lombok.Data;

import java.math.BigDecimal;

public class OperacionDto {

    private Integer idOperacion;
    private BigDecimal montoInicial;
    private String tipoCambio;
    private BigDecimal valorCambio;
    private BigDecimal montoFinal;

    public Integer getIdOperacion() {
        return idOperacion;
    }

    public void setIdOperacion(Integer idOperacion) {
        this.idOperacion = idOperacion;
    }

    public BigDecimal getMontoInicial() {
        return montoInicial;
    }

    public void setMontoInicial(BigDecimal montoInicial) {
        this.montoInicial = montoInicial;
    }

    public String getTipoCambio() {
        return tipoCambio;
    }

    public void setTipoCambio(String tipoCambio) {
        this.tipoCambio = tipoCambio;
    }

    public BigDecimal getValorCambio() {
        return valorCambio;
    }

    public void setValorCambio(BigDecimal valorCambio) {
        this.valorCambio = valorCambio;
    }

    public BigDecimal getMontoFinal() {
        return montoFinal;
    }

    public void setMontoFinal(BigDecimal montoFinal) {
        this.montoFinal = montoFinal;
    }
}
