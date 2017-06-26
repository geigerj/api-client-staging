// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/cloud/videointelligence/v1beta1/video_intelligence.proto

package com.google.cloud.videointelligence.v1beta1;

public interface FaceLocationOrBuilder extends
    // @@protoc_insertion_point(interface_extends:google.cloud.videointelligence.v1beta1.FaceLocation)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <pre>
   * Bounding box in a frame.
   * </pre>
   *
   * <code>.google.cloud.videointelligence.v1beta1.BoundingBox bounding_box = 1;</code>
   */
  boolean hasBoundingBox();
  /**
   * <pre>
   * Bounding box in a frame.
   * </pre>
   *
   * <code>.google.cloud.videointelligence.v1beta1.BoundingBox bounding_box = 1;</code>
   */
  com.google.cloud.videointelligence.v1beta1.BoundingBox getBoundingBox();
  /**
   * <pre>
   * Bounding box in a frame.
   * </pre>
   *
   * <code>.google.cloud.videointelligence.v1beta1.BoundingBox bounding_box = 1;</code>
   */
  com.google.cloud.videointelligence.v1beta1.BoundingBoxOrBuilder getBoundingBoxOrBuilder();

  /**
   * <pre>
   * Video time offset in microseconds.
   * </pre>
   *
   * <code>int64 time_offset = 2;</code>
   */
  long getTimeOffset();
}
