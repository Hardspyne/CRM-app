package com.rest;

public class CustomerNotFountException extends RuntimeException {
    public CustomerNotFountException(String message) {
        super(message);
    }

    public CustomerNotFountException(String message, Throwable cause) {
        super(message, cause);
    }

    public CustomerNotFountException(Throwable cause) {
        super(cause);
    }
}
