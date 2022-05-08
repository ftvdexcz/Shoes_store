/*
 * Generated by XDoclet - Do not edit!
 */
package test.interfaces;

/**
 * Home interface for Account.
 * @xdoclet-generated at 28-04-04
 * @copyright The XDoclet Team
 * @author XDoclet
 * @version 1.2.1
 */
public interface AccountHome
   extends javax.ejb.EJBHome
{
   public static final String COMP_NAME="java:comp/env/ejb/Account";
   public static final String JNDI_NAME="ejb/bank/Account";

   public test.interfaces.Account create(test.interfaces.AccountValue data)
      throws javax.ejb.CreateException,java.rmi.RemoteException;

   public java.util.Collection findAll()
      throws javax.ejb.FinderException,java.rmi.RemoteException;

   public java.util.Collection findByOwner(test.interfaces.Customer owner)
      throws javax.ejb.FinderException,java.rmi.RemoteException;

   public java.util.Collection findLargeAccounts(int balance)
      throws javax.ejb.FinderException,java.rmi.RemoteException;

   public test.interfaces.Account findByPrimaryKey(test.interfaces.AccountPK pk)
      throws javax.ejb.FinderException,java.rmi.RemoteException;

   /**
    * Transfer money
    */
   public void transfer(test.interfaces.Account from,test.interfaces.Account to,float amount)
      throws java.rmi.RemoteException;

}
