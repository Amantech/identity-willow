//package com.google.gitkit.samples;
package se.amantech.identitywillow;

import com.google.common.io.BaseEncoding;

public class GitConfig {
	
	private static final String ENCODED_KEY = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDtdEV56vkqcTkw"
			+ "uJNbF6GWx9Ca2Zxsz1nTbOnhLgZBL+tP3XafsDFlvRW93Ee87fLcvQQofp5RkZ7M"
			+ "9j6tu9wGUYOLPQFG+3NA/4kePWWKm6wJdAIDKoFVd09z2VSAR+x5qJRHCEmsl+0n"
			+ "7gnXRRJftck4FphWEY0CSkvRyVM+G/4li6ueiBj27z2kvnG4KXhOtqaBUkAxKgu5"
			+ "ltGc58Kv99vFY0d9SQdzxd9AifJwffofRgZ0bGcr7/fVc8sXEj5U7W1BJjFjhNF4"
			+ "i0nO7t1JxGhZ9VjR/7/anzQugE/EGR6wSs0QEMcBxKgv2ZkLvyPSKntUka0U21CX"
			+ "NdB3/yDjAgMBAAECggEAf8W+EOGYm/b7ADWBzVWE9P6mSHzqSD63JiaIH0xFv1QK"
			+ "uhoAV+NWYVmC1nwu+gHMWm03TJb9mATUv5ONnKzms1uvfgAgrNJnbUVTwjrlZdVo"
			+ "mFmdL5jyqUufLEZ4yuJo4/oLd8GE62OBEKhtETIwteG62fyGkmG1T9Msw0EjEtqx"
			+ "2bvO85E4CRlGoeJdCiFpdlyW32YPQ0NPHuEacZpYoI+ZTtN866+lQxIMnM2nILnm"
			+ "iAzWcohpgr43Wpr+IbywlssXJ6WATLbzRHKk5H3Bo4eus+mfJaLHHUudmq8M3F5w"
			+ "ZRyfcTi0hcosUbT511NC2TyatBR+xdQqp5nWq0zeEQKBgQD8I6wwQ6ItdIcI9mrK"
			+ "931Wru21MqVG7RTVg0y5t7zNNrtDA+BlyONljcpzSxFzn1CROFi7jKYH8XF/o77E"
			+ "QXL622riM5XpXsZ5Gs+h9gddoDwqkyyP9xq7CjX095ECmWDzURNNSVBnlrR6n4pU"
			+ "8wrwvTSqdN9Zun6Ti6Z62+IK6wKBgQDxFwlP9p+17uyllYOxsjOHJb2nFLIqpDp6"
			+ "dKGAIG1btRD/h8HwHtQ+Otz05lj7sHAIsdKCZJe7A6UCMBuJmT2JRP+SI9ZzSFN1"
			+ "hEX+fH7kEjO4JluyxTRMt5fs04zGIhfZWEi0+yfKd8Trd+xltlUDmFQx3i9pe/sJ"
			+ "+ywKGOtT6QKBgQDpSaQ+f8VlI0TxkPWcV8LbWjzMA1ESv7cgGjz6NLt2cCZxSfvs"
			+ "kSN8yeVAKXu7K/Oieaz30pmoDcgC3iFaemgFHNDW+/2/kBY45QqpgvartN8WUVfQ"
			+ "2EQePMNRpWHBMuKWHjSqtKO1RKY2MrkOAlXkClvZPwuMfNYyc+qUEDAkAwKBgQCb"
			+ "QkeX/G47/uLde9z0qZsvdKmfGN/oQBz80XFUDw3+GiwZM3c8yM3MSaIUAOfbJnPv"
			+ "1XyIxnlEUYOJVivVwB718L5ZgcTQNwqwSn+89LXO8L3n4KP7C66znSQ0usQUsM4F"
			+ "BSrFilzEsb7aGT/e/L3g88980eZcmyA+/EcPNZ8PSQKBgQDrx8pJrM9HiUpcUKdC"
			+ "QJaZWw4kdS0B1udBx7c0Y8FdrNjp0xoYJO+5YADHEmDRQLNfneiluh1i2AqWunr8"
			+ "zqZh0LvHZrJCM6BvtDNy1Zty+15fx9ZSQTlYf3HOluATVRdC630OW1wwCfUN9k8b"
			+ "9clsJm2+0U9lsJvrRmSuT7eG7Q==";

	  private static final String OLDENCODED_KEY = "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";

		  public static byte[] getP12Key() {
		    return BaseEncoding.base64().decode(ENCODED_KEY);
		  }
}

