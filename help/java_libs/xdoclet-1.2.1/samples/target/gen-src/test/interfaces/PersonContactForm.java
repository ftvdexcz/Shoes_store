package test.interfaces;

/**
 * Generated by XDoclet/ejbdoclet/strutsform. This class can be further processed with XDoclet/webdoclet/strutsconfigxml.
 *
 * @struts.form name="person.Contact"
 */
public class PersonContactForm
    extends    org.apache.struts.action.ActionForm
    implements java.io.Serializable
{
    protected java.lang.String phone;
    protected java.lang.String fax;

    /** Default empty constructor. */
    public PersonContactForm() {}

    /** Constructor that takes the data object as argument. */
    public PersonContactForm(test.interfaces.PersonData dataHolder)
    {
       this.setPhone(dataHolder.getPhone());
       this.setFax(dataHolder.getFax());
    }

    public java.lang.String getPhone()
    {
        return this.phone;
    }

    public void setPhone( java.lang.String phone )
    {
        this.phone = phone;
    }

    public java.lang.String getFax()
    {
        return this.fax;
    }

    public void setFax( java.lang.String fax )
    {
        this.fax = fax;
    }

    public test.interfaces.PersonData getData(test.interfaces.PersonData dataHolder)
    {
       test.interfaces.PersonData retData = new test.interfaces.PersonData(dataHolder);

        retData.setPhone(this.getPhone());
        retData.setFax(this.getFax());

        return retData;
    }

    public test.interfaces.PersonData getData()
    {
       test.interfaces.PersonData retData = new test.interfaces.PersonData();

        retData.setPhone(this.getPhone());
        retData.setFax(this.getFax());

        return retData;
    }

    public void setData(test.interfaces.PersonData dataHolder)
    {
        this.setPhone (dataHolder.getPhone());
        this.setFax (dataHolder.getFax());
    }

}
