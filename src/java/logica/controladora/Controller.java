package logica.controladora;

import java.util.List;

public abstract class Controller<T> {
    public abstract boolean create(T entity);
    public abstract boolean update(T entity);
    public abstract boolean delete(int id);
    public abstract List<T> list();
    public abstract T takeObject(int id);
    public abstract boolean searchObject(T entity);
    public abstract T getObject();    
}
