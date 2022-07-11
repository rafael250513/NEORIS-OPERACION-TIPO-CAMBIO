package pe.operacion.model;

import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@NoArgsConstructor
//@AllArgsConstructor
@EqualsAndHashCode(callSuper=false)
public class ResponseEntity<S> implements Serializable {

    private static final long serialVersionUID = 1L;

    private boolean state;
    private String message;
    private Object value;
    public static long getSerialversionuid() {
        return serialVersionUID;
    }


    public void setInformacion(String s) {
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public boolean isState() {
        return state;
    }

    public void setState(boolean state) {
        this.state = state;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getValue() {
        return value;
    }

    public void setValue(Object value) {
        this.value = value;
    }

    public ResponseEntity(boolean state, String message, Object value) {
        this.state = state;
        this.message = message;
        this.value = value;
    }
}
