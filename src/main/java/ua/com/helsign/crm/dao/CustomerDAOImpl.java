package ua.com.helsign.crm.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ua.com.helsign.crm.entity.Customer;

import java.util.List;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public List<Customer> getCustomers() {

        Session session = sessionFactory.getCurrentSession();
        Query<Customer> query = session.createQuery("from Customer order by lastName", Customer.class);
        List<Customer> customers = query.getResultList();

        return customers;
    }

    public void saveCustomer(Customer customer) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customer);
    }

    public Customer getCustomer(int customerId) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Customer.class, customerId);
    }

    public void deleteCustomer(int customerId) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete from Customer where id=:customerId");
        query.setParameter("customerId", customerId);
        query.executeUpdate();
    }

    public List<Customer> searchCustomer(String searchName) {
        Session session = sessionFactory.getCurrentSession();
        Query query;
        if (searchName == null || searchName.trim().length() == 0) {
            query = session.createQuery("from Customer");
        } else {
            query = session.createQuery(
                    "from Customer where lower(firstName) like :theName or lower(lastName) like :theName ",
                    Customer.class);
            query.setParameter("theName", "%" + searchName.toLowerCase() + "%");
        }
        List<Customer> customers = query.getResultList();
        return customers;
    }
}
