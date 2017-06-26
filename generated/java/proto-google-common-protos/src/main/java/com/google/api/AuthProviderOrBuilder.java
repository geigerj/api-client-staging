// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/api/auth.proto

package com.google.api;

public interface AuthProviderOrBuilder extends
    // @@protoc_insertion_point(interface_extends:google.api.AuthProvider)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <pre>
   * The unique identifier of the auth provider. It will be referred to by
   * `AuthRequirement.provider_id`.
   * Example: "bookstore_auth".
   * </pre>
   *
   * <code>string id = 1;</code>
   */
  java.lang.String getId();
  /**
   * <pre>
   * The unique identifier of the auth provider. It will be referred to by
   * `AuthRequirement.provider_id`.
   * Example: "bookstore_auth".
   * </pre>
   *
   * <code>string id = 1;</code>
   */
  com.google.protobuf.ByteString
      getIdBytes();

  /**
   * <pre>
   * Identifies the principal that issued the JWT. See
   * https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.1
   * Usually a URL or an email address.
   * Example: https://securetoken.google.com
   * Example: 1234567-compute&#64;developer.gserviceaccount.com
   * </pre>
   *
   * <code>string issuer = 2;</code>
   */
  java.lang.String getIssuer();
  /**
   * <pre>
   * Identifies the principal that issued the JWT. See
   * https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.1
   * Usually a URL or an email address.
   * Example: https://securetoken.google.com
   * Example: 1234567-compute&#64;developer.gserviceaccount.com
   * </pre>
   *
   * <code>string issuer = 2;</code>
   */
  com.google.protobuf.ByteString
      getIssuerBytes();

  /**
   * <pre>
   * URL of the provider's public key set to validate signature of the JWT. See
   * [OpenID Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderMetadata).
   * Optional if the key set document:
   *  - can be retrieved from
   *    [OpenID Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html
   *    of the issuer.
   *  - can be inferred from the email domain of the issuer (e.g. a Google service account).
   * Example: https://www.googleapis.com/oauth2/v1/certs
   * </pre>
   *
   * <code>string jwks_uri = 3;</code>
   */
  java.lang.String getJwksUri();
  /**
   * <pre>
   * URL of the provider's public key set to validate signature of the JWT. See
   * [OpenID Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderMetadata).
   * Optional if the key set document:
   *  - can be retrieved from
   *    [OpenID Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html
   *    of the issuer.
   *  - can be inferred from the email domain of the issuer (e.g. a Google service account).
   * Example: https://www.googleapis.com/oauth2/v1/certs
   * </pre>
   *
   * <code>string jwks_uri = 3;</code>
   */
  com.google.protobuf.ByteString
      getJwksUriBytes();

  /**
   * <pre>
   * The list of JWT
   * [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3).
   * that are allowed to access. A JWT containing any of these audiences will
   * be accepted. When this setting is absent, only JWTs with audience
   * "https://[Service_name][google.api.Service.name]/[API_name][google.protobuf.Api.name]"
   * will be accepted. For example, if no audiences are in the setting,
   * LibraryService API will only accept JWTs with the following audience
   * "https://library-example.googleapis.com/google.example.library.v1.LibraryService".
   * Example:
   *     audiences: bookstore_android.apps.googleusercontent.com,
   *                bookstore_web.apps.googleusercontent.com
   * </pre>
   *
   * <code>string audiences = 4;</code>
   */
  java.lang.String getAudiences();
  /**
   * <pre>
   * The list of JWT
   * [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3).
   * that are allowed to access. A JWT containing any of these audiences will
   * be accepted. When this setting is absent, only JWTs with audience
   * "https://[Service_name][google.api.Service.name]/[API_name][google.protobuf.Api.name]"
   * will be accepted. For example, if no audiences are in the setting,
   * LibraryService API will only accept JWTs with the following audience
   * "https://library-example.googleapis.com/google.example.library.v1.LibraryService".
   * Example:
   *     audiences: bookstore_android.apps.googleusercontent.com,
   *                bookstore_web.apps.googleusercontent.com
   * </pre>
   *
   * <code>string audiences = 4;</code>
   */
  com.google.protobuf.ByteString
      getAudiencesBytes();
}
