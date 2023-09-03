/**
 * Dic.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package DefaultNamespace;

public interface Dic extends java.rmi.Remote {
    public java.lang.String editWord(java.lang.String word, java.lang.String newMeaning) throws java.rmi.RemoteException;
    public java.lang.String deleteWord(java.lang.String word) throws java.rmi.RemoteException;
    public java.lang.String addWord(java.lang.String word, java.lang.String meaning) throws java.rmi.RemoteException;
    public java.lang.String lookup(java.lang.String word) throws java.rmi.RemoteException;
}
