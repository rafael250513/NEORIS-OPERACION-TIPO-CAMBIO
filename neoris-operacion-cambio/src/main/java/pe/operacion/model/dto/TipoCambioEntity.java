package pe.operacion.model.dto;

import java.math.BigDecimal;
import java.util.List;

public class TipoCambioEntity {
    private Integer monto;
    private String codigo;
    private String tipoCambio;
    private List<TipoCambioEntity> listaTipoCambio;

    public Integer getMonto() {
        return monto;
    }

    public void setMonto(Integer monto) {
        this.monto = monto;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getTipoCambio() {
        return tipoCambio;
    }

    public void setTipoCambio(String tipoCambio) {
        this.tipoCambio = tipoCambio;
    }

    public List<TipoCambioEntity> getListaTipoCambio() {
        return listaTipoCambio;
    }

    public void setListaTipoCambio(List<TipoCambioEntity> listaTipoCambio) {
        this.listaTipoCambio = listaTipoCambio;
    }
}
