---
layout: post
title: "generating api tests from swagger"
tags:
 -
---

Here are the relavent snippets for doing this.

Here is the test that uses the dependency testCompile "io.github.robwin:assertj-swagger:0.4.0"

{% highlight java %}
import com.mycodeexample.ExampleApi;
import io.github.robwin.swagger.test.SwaggerAssertions;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.IntegrationTest;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = { ExampleApi.class, SwaggerConfiguration.class })
@IntegrationTest
@WebAppConfiguration
public class AssertjSwaggerConsumerDrivenTest {

    @Test
    public void validateThatImplementationSatisfiesConsumerSpecification(){
        String designFirstSwagger = ClassLoader.getSystemResource("swagger.json").getPath();
        SwaggerAssertions.assertThat("http://localhost:8080/v2/api-docs")
                .satisfiesContract(designFirstSwagger);
    }
}
{% endhighlight %}


Here is the java (in the test package) that generates the swagger that is being served at localhost:8080

{% highlight java %}
import com.google.common.base.Predicate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import static springfox.documentation.builders.PathSelectors.regex;

@EnableSwagger2
@Configuration
public class SwaggerConfiguration {

    @Bean
    public Docket docket() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .paths(paths())
                .build();
    }

    Predicate<String> paths() {
        return regex("^/profiles.*");
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("Example Api")
                .description("Example Api")
                .build();
    }
}
{% endhighlight %}

Here is the "canonical" swagger that we want to be fulfilled by the swagger generated from the real code

{% highlight java %}
{
  "swagger": "2.0",
  "info": {
    "description": "Documentation",
    "version": "1.0",
    "title": "Documentation"
  },
  "host": "localhost:8080",
  "basePath": "/",
  "paths": {
    "/foo/{id}": {
      "get": {
        "consumes": [
          "application/json"
        ],
        "produces": [
          "*/*"
        ],
        "parameters": [
          {
            "name": "id",
            "in": "path",
            "description": "id",
            "required": true,
            "type": "string"
          }
        ],
        "responses": {
          "200": {
            "description": "OK",
            "schema": {
              "type": "object"
            }
          },
          "401": {
            "description": "Unauthorized"
          },
          "403": {
            "description": "Forbidden"
          },
          "404": {
            "description": "Not Found"
          }
        }
      }
    }
  }
}
{% endhighlight %}
