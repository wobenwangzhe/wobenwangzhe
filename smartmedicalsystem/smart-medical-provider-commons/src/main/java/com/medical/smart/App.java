package com.medical.smart;


import com.medical.smart.base.util.IdGenerator;
import jdk.nashorn.internal.objects.annotations.Constructor;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

/**
 * Hello world!
 *
 */
public class App {

    private static IdGenerator idGenerator=new IdGenerator();

    public static void main( String[] args ) {

         for( int i=0 ; i<1000 ; i++){
             System.out.println(idGenerator.createId());
         }
    }
}
