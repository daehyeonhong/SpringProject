package shop.carrental.util;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.URL;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonReader;
import javax.net.ssl.HttpsURLConnection;

public class VerifyReCAPTCHA {
	public static final String url = "https://www.google.com/recaptcha/api/siteverify";
	private final static String USER_AGENT = "Mozilla/5.0";
	private static String secret = "";

	public static void setSecretKey(String key) {
		secret = key;
	}

	public static boolean verify(String gReCAPTCHAResponse) throws IOException {
		if (gReCAPTCHAResponse == null || gReCAPTCHAResponse.equals("")) {
			return false;
		}

		try {
			URL object = new URL(url);
			HttpsURLConnection httpsURLConnection = (HttpsURLConnection) object.openConnection();

			/* Request Header */
			httpsURLConnection.setRequestMethod("POST");
			httpsURLConnection.setRequestProperty("User-Agent", USER_AGENT);
			httpsURLConnection.setRequestProperty("Accept-Language", "en-US,en;q=0.5");

			String postParameters = "secret=" + secret + "&response=" + gReCAPTCHAResponse;

			/* Send Post Request */
			httpsURLConnection.setDoOutput(true);
			DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
			dataOutputStream.writeBytes(postParameters);
			dataOutputStream.flush();
			dataOutputStream.close();

			int responseCode = httpsURLConnection.getResponseCode();
			System.out.println("\nSending 'POST' request to URL : " + url);
			System.out.println("Post parameters : " + postParameters);
			System.out.println("Response Code : " + responseCode);

			BufferedReader bufferedReader = new BufferedReader(
					new InputStreamReader(httpsURLConnection.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();

			while ((inputLine = bufferedReader.readLine()) != null) {
				response.append(inputLine);
			}
			bufferedReader.close();

			/* Print Result */
			System.out.println(response.toString());

			/* Parse JSON response and return 'success' value */
			JsonReader jsonReader = Json.createReader(new StringReader(response.toString()));
			JsonObject jsonObject = jsonReader.readObject();
			jsonReader.close();

			return jsonObject.getBoolean("success");
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}