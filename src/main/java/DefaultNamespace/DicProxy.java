package DefaultNamespace;

public class DicProxy implements DefaultNamespace.Dic {
  private String _endpoint = null;
  private DefaultNamespace.Dic dic = null;
  
  public DicProxy() {
    _initDicProxy();
  }
  
  public DicProxy(String endpoint) {
    _endpoint = endpoint;
    _initDicProxy();
  }
  
  private void _initDicProxy() {
    try {
      dic = (new DefaultNamespace.DicServiceLocator()).getDic();
      if (dic != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)dic)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)dic)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (dic != null)
      ((javax.xml.rpc.Stub)dic)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public DefaultNamespace.Dic getDic() {
    if (dic == null)
      _initDicProxy();
    return dic;
  }
  
  public java.lang.String editWord(java.lang.String word, java.lang.String newMeaning) throws java.rmi.RemoteException{
    if (dic == null)
      _initDicProxy();
    return dic.editWord(word, newMeaning);
  }
  
  public java.lang.String deleteWord(java.lang.String word) throws java.rmi.RemoteException{
    if (dic == null)
      _initDicProxy();
    return dic.deleteWord(word);
  }
  
  public java.lang.String addWord(java.lang.String word, java.lang.String meaning) throws java.rmi.RemoteException{
    if (dic == null)
      _initDicProxy();
    return dic.addWord(word, meaning);
  }
  
  public java.lang.String lookup(java.lang.String word) throws java.rmi.RemoteException{
    if (dic == null)
      _initDicProxy();
    return dic.lookup(word);
  }
  
  
}