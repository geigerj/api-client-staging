// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/logging/v2/logging_config.proto

package com.google.logging.v2;

public interface UpdateSinkRequestOrBuilder extends
    // @@protoc_insertion_point(interface_extends:google.logging.v2.UpdateSinkRequest)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <pre>
   * Required. The full resource name of the sink to update, including the
   * parent resource and the sink identifier:
   *     "projects/[PROJECT_ID]/sinks/[SINK_ID]"
   *     "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
   *     "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
   *     "folders/[FOLDER_ID]/sinks/[SINK_ID]"
   * Example: `"projects/my-project-id/sinks/my-sink-id"`.
   * </pre>
   *
   * <code>string sink_name = 1;</code>
   */
  java.lang.String getSinkName();
  /**
   * <pre>
   * Required. The full resource name of the sink to update, including the
   * parent resource and the sink identifier:
   *     "projects/[PROJECT_ID]/sinks/[SINK_ID]"
   *     "organizations/[ORGANIZATION_ID]/sinks/[SINK_ID]"
   *     "billingAccounts/[BILLING_ACCOUNT_ID]/sinks/[SINK_ID]"
   *     "folders/[FOLDER_ID]/sinks/[SINK_ID]"
   * Example: `"projects/my-project-id/sinks/my-sink-id"`.
   * </pre>
   *
   * <code>string sink_name = 1;</code>
   */
  com.google.protobuf.ByteString
      getSinkNameBytes();

  /**
   * <pre>
   * Required. The updated sink, whose name is the same identifier that appears
   * as part of `sink_name`.  If `sink_name` does not exist, then
   * this method creates a new sink.
   * </pre>
   *
   * <code>.google.logging.v2.LogSink sink = 2;</code>
   */
  boolean hasSink();
  /**
   * <pre>
   * Required. The updated sink, whose name is the same identifier that appears
   * as part of `sink_name`.  If `sink_name` does not exist, then
   * this method creates a new sink.
   * </pre>
   *
   * <code>.google.logging.v2.LogSink sink = 2;</code>
   */
  com.google.logging.v2.LogSink getSink();
  /**
   * <pre>
   * Required. The updated sink, whose name is the same identifier that appears
   * as part of `sink_name`.  If `sink_name` does not exist, then
   * this method creates a new sink.
   * </pre>
   *
   * <code>.google.logging.v2.LogSink sink = 2;</code>
   */
  com.google.logging.v2.LogSinkOrBuilder getSinkOrBuilder();

  /**
   * <pre>
   * Optional. See
   * [sinks.create](/logging/docs/api/reference/rest/v2/projects.sinks/create)
   * for a description of this field.  When updating a sink, the effect of this
   * field on the value of `writer_identity` in the updated sink depends on both
   * the old and new values of this field:
   * +   If the old and new values of this field are both false or both true,
   *     then there is no change to the sink's `writer_identity`.
   * +   If the old value is false and the new value is true, then
   *     `writer_identity` is changed to a unique service account.
   * +   It is an error if the old value is true and the new value is false.
   * </pre>
   *
   * <code>bool unique_writer_identity = 3;</code>
   */
  boolean getUniqueWriterIdentity();
}
