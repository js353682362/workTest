package com.jiaos.pojo;

import java.io.File;
import java.io.IOException;

/**
 * @（#）:IOTest.java
 * @description:
 * @author: jiaosen 2017/4/24
 * @version: Version 1.0
 */
public class IOTest {
    public static void main(String[] args) {
        createFile();
    }
    static void createFile(){
        File file = new File("E://files/create.txt");
        try {
            file.createNewFile();
            file.mkdir();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
