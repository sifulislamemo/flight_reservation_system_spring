package com.flight.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.flight")
@EntityScan( basePackages = {"com.flight"} )
public class FlightReservationSystemApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(FlightReservationSystemApplication.class, args);
	}

}
