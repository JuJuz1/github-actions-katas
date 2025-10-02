[1mdiff --git a/app/src/test/java/example/micronaut/HelloControllerTest.java b/app/src/test/java/example/micronaut/HelloControllerTest.java[m
[1mindex 2aeef34..e31201c 100644[m
[1m--- a/app/src/test/java/example/micronaut/HelloControllerTest.java[m
[1m+++ b/app/src/test/java/example/micronaut/HelloControllerTest.java[m
[36m@@ -11,21 +11,21 @@[m [mimport org.junit.jupiter.api.Test;[m
 [m
 import javax.inject.Inject;[m
 [m
[31m-@MicronautTest [m
[32m+[m[32m@MicronautTest[m
 public class HelloControllerTest {[m
 [m
     @Inject[m
     @Client("/")[m
[31m-    RxHttpClient client; [m
[32m+[m[32m    RxHttpClient client;[m
     //Test spins up an entire server and client to perform the test[m
[31m-    [m
[32m+[m
     @Test[m
     public void testHello() {[m
[31m-        HttpRequest<String> request = HttpRequest.GET("/hello/sofus"); [m
[32m+[m[32m        HttpRequest<String> request = HttpRequest.GET("/hello/sofus");[m
         String body = client.toBlocking().retrieve(request);[m
 [m
         assertNotNull(body);[m
[31m-        assertEquals("Hello sofus", body);[m
[32m+[m[32m        assertEquals("Hello sofus BREAK", body);[m
     }[m
     @Test[m
     public void testCombineName() {[m
[36m@@ -33,8 +33,8 @@[m [mpublic class HelloControllerTest {[m
         HelloController sut = new HelloController();[m
         System.out.println("testing");[m
         assertEquals("Hello "+name, sut.combineName(name),"Name and greeting not properly combined");[m
[31m-        [m
[31m-        [m
[32m+[m
[32m+[m
     }[m
 [m
 }[m
\ No newline at end of file[m
