package com.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

import java.util.logging.Logger;

@Aspect
@Component
public class CRMLoggingAspect {

    private Logger logger = Logger.getLogger(getClass().getName());

    @Pointcut("execution(* com.controller.*.*(..))")
    private void forControllerPackage() {
    }

    @Pointcut("execution(* com.service.*.*(..))")
    private void forServicePackage() {
    }

    @Pointcut("execution(* com.dao.*.*(..))")
    private void forDaoPackage() {
    }

    @Pointcut("forControllerPackage()|| forServicePackage() || forDaoPackage()")
    private void forAppFlow() {
    }

    @Before("forAppFlow()")
    public void before(JoinPoint joinPoint) {
        String method = joinPoint.getSignature().toShortString();
        logger.info("in @Before Calling method: " + method);
    }

    @AfterReturning(pointcut = "forAppFlow()", returning = "result")
    public void afterReturning(JoinPoint joinPoint, Object result) {
        String method = joinPoint.getSignature().toShortString();
        logger.info("in @Before Calling method: " + method);

        logger.info("result: " + result);
    }

    @AfterThrowing(pointcut = "forAppFlow()", throwing = "exc")
    public void afterThrowing(JoinPoint joinPoint, Throwable exc) {
        String method = joinPoint.getSignature().toShortString();
        logger.warning(exc.toString() + " in method: " + method);
    }
}
