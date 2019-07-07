package minibbs.model.dao;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;


public abstract class BaseDaoImpl<TEntity> implements BaseDao<TEntity> {

	private SessionFactory sf;	
	private Class<TEntity> entityClass;
	
	public void setSessionFactory(SessionFactory sf) {
		this.sf = sf;
	}
	
	protected Session getSession() {
		return sf.openSession();
	}
	
	@SuppressWarnings("unchecked")
	public BaseDaoImpl() {		
		Class<?> c = this.getClass();
		Type t = c.getGenericSuperclass();
		if (t instanceof ParameterizedType) {
			Type[] types = ((ParameterizedType)t).getActualTypeArguments();
			entityClass = (Class<TEntity>)types[0];
		}
	}

	@Override
	public void save(TEntity entity) {
		Session session = this.getSession();
		session.beginTransaction();
		session.saveOrUpdate(entity);
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public void delete(TEntity entity) {
		Session session = this.getSession();
		session.beginTransaction();
		session.delete(entity);
		session.getTransaction().commit();
		session.close();
	}
	
	@Override
	public void delete(long id) {
		TEntity entity = get(id);
		delete(entity);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<TEntity> findAll(String cond) {
		if(cond!=null) {
			cond = " order by "+cond;
		}
		else {
			cond="";
		}
		List<TEntity> entities = this.getSession().createQuery("from " + entityClass.getSimpleName()+cond).list();
		return entities;
	}

	@Override
	public List<TEntity> findAll(){
		return this.findAll(null);
	}
	
	
	@SuppressWarnings({ "unchecked" })
	@Override
	public List<TEntity> findBy(String propertyName, Object propertyValue) {
		String queryString = "from " + entityClass.getSimpleName() + " e ";
		queryString += "where e." + propertyName + "=:propertyValue";
		Query query = this.getSession().createQuery(queryString);
		List<TEntity> entities = query.setParameter("propertyValue", propertyValue).list();
		return entities;
	}

	@SuppressWarnings("unchecked")
	@Override
	public TEntity get(long id) {
		Session session = this.getSession();
		session.beginTransaction();
		TEntity entity = (TEntity)session.get(entityClass, id);
		session.getTransaction().commit();
		session.close();
		return entity;
	}

	@Override
	public TEntity getSingle(String propertyName, Object propertyValue) {
		List<TEntity> entities = findBy(propertyName, propertyValue);
		if (entities != null && entities.size() > 0) {
			return entities.get(0);
		}
		return null;
	}
}
