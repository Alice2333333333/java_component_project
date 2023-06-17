package com.mvc.controller;
import com.mvc.bean.testbean;

import java.util.UUID;

import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;
import org.eclipse.paho.client.mqttv3.persist.MemoryPersistence;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BrokerConnectServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	 
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session = request.getSession();
		 String username = (String) session.getAttribute("username");
		 String broker = "tcp://test.mosquitto.org:1883";
		 String clientid = "upm_client";
		 String topic = "mqtt_light/" + username;
		 String content = "Hello MQTT";
		 int qos = 1;
		 
		 try {
	            MqttClient client = new MqttClient(broker, clientid, new MemoryPersistence());
	            MqttConnectOptions options = new MqttConnectOptions();
	            options.setKeepAliveInterval(60);
	            options.setConnectionTimeout(60);
	            client.connect(options);
	            MqttMessage message = new MqttMessage(content.getBytes());
	            message.setQos(qos);
	            client.publish(topic, message);
	            client.disconnect();
	            client.close();
				request.getRequestDispatcher("/Home.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
        } catch (MqttException e) {
            throw new RuntimeException(e);
        }
    }
}


