# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/privacy/dlp/v2beta1/dlp.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/longrunning/operations_pb'
require 'google/privacy/dlp/v2beta1/storage_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/date_pb'
require 'google/type/timeofday_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.privacy.dlp.v2beta1.InspectConfig" do
    repeated :info_types, :message, 1, "google.privacy.dlp.v2beta1.InfoType"
    optional :min_likelihood, :enum, 2, "google.privacy.dlp.v2beta1.Likelihood"
    optional :max_findings, :int32, 3
    optional :include_quote, :bool, 4
    optional :exclude_types, :bool, 6
  end
  add_message "google.privacy.dlp.v2beta1.ContentItem" do
    optional :type, :string, 1
    oneof :data_item do
      optional :data, :bytes, 2
      optional :value, :string, 3
    end
  end
  add_message "google.privacy.dlp.v2beta1.InspectResult" do
    repeated :findings, :message, 1, "google.privacy.dlp.v2beta1.Finding"
    optional :findings_truncated, :bool, 2
  end
  add_message "google.privacy.dlp.v2beta1.Finding" do
    optional :quote, :string, 1
    optional :info_type, :message, 2, "google.privacy.dlp.v2beta1.InfoType"
    optional :likelihood, :enum, 3, "google.privacy.dlp.v2beta1.Likelihood"
    optional :location, :message, 4, "google.privacy.dlp.v2beta1.Location"
    optional :create_time, :message, 6, "google.protobuf.Timestamp"
  end
  add_message "google.privacy.dlp.v2beta1.Location" do
    optional :byte_range, :message, 1, "google.privacy.dlp.v2beta1.Range"
    optional :codepoint_range, :message, 2, "google.privacy.dlp.v2beta1.Range"
    repeated :image_boxes, :message, 3, "google.privacy.dlp.v2beta1.ImageLocation"
    optional :record_key, :message, 4, "google.privacy.dlp.v2beta1.RecordKey"
    optional :field_id, :message, 5, "google.privacy.dlp.v2beta1.FieldId"
  end
  add_message "google.privacy.dlp.v2beta1.Range" do
    optional :start, :int64, 1
    optional :end, :int64, 2
  end
  add_message "google.privacy.dlp.v2beta1.ImageLocation" do
    optional :top, :int32, 1
    optional :left, :int32, 2
    optional :width, :int32, 3
    optional :height, :int32, 4
  end
  add_message "google.privacy.dlp.v2beta1.RedactContentRequest" do
    optional :inspect_config, :message, 1, "google.privacy.dlp.v2beta1.InspectConfig"
    repeated :items, :message, 2, "google.privacy.dlp.v2beta1.ContentItem"
    repeated :replace_configs, :message, 3, "google.privacy.dlp.v2beta1.RedactContentRequest.ReplaceConfig"
    repeated :image_redaction_configs, :message, 4, "google.privacy.dlp.v2beta1.RedactContentRequest.ImageRedactionConfig"
  end
  add_message "google.privacy.dlp.v2beta1.RedactContentRequest.ReplaceConfig" do
    optional :info_type, :message, 1, "google.privacy.dlp.v2beta1.InfoType"
    optional :replace_with, :string, 2
  end
  add_message "google.privacy.dlp.v2beta1.RedactContentRequest.ImageRedactionConfig" do
    optional :redaction_color, :message, 3, "google.privacy.dlp.v2beta1.Color"
    oneof :target do
      optional :info_type, :message, 1, "google.privacy.dlp.v2beta1.InfoType"
      optional :redact_all_text, :bool, 2
    end
  end
  add_message "google.privacy.dlp.v2beta1.Color" do
    optional :red, :float, 1
    optional :green, :float, 2
    optional :blue, :float, 3
  end
  add_message "google.privacy.dlp.v2beta1.RedactContentResponse" do
    repeated :items, :message, 1, "google.privacy.dlp.v2beta1.ContentItem"
  end
  add_message "google.privacy.dlp.v2beta1.InspectContentRequest" do
    optional :inspect_config, :message, 1, "google.privacy.dlp.v2beta1.InspectConfig"
    repeated :items, :message, 2, "google.privacy.dlp.v2beta1.ContentItem"
  end
  add_message "google.privacy.dlp.v2beta1.InspectContentResponse" do
    repeated :results, :message, 1, "google.privacy.dlp.v2beta1.InspectResult"
  end
  add_message "google.privacy.dlp.v2beta1.CreateInspectOperationRequest" do
    optional :inspect_config, :message, 1, "google.privacy.dlp.v2beta1.InspectConfig"
    optional :storage_config, :message, 2, "google.privacy.dlp.v2beta1.StorageConfig"
    optional :output_config, :message, 3, "google.privacy.dlp.v2beta1.OutputStorageConfig"
  end
  add_message "google.privacy.dlp.v2beta1.OutputStorageConfig" do
    oneof :type do
      optional :storage_path, :message, 2, "google.privacy.dlp.v2beta1.CloudStoragePath"
    end
  end
  add_message "google.privacy.dlp.v2beta1.InfoTypeStatistics" do
    optional :info_type, :message, 1, "google.privacy.dlp.v2beta1.InfoType"
    optional :count, :int64, 2
  end
  add_message "google.privacy.dlp.v2beta1.InspectOperationMetadata" do
    optional :processed_bytes, :int64, 1
    optional :total_estimated_bytes, :int64, 4
    repeated :info_type_stats, :message, 2, "google.privacy.dlp.v2beta1.InfoTypeStatistics"
    optional :create_time, :message, 3, "google.protobuf.Timestamp"
    optional :request_inspect_config, :message, 5, "google.privacy.dlp.v2beta1.InspectConfig"
    optional :request_storage_config, :message, 6, "google.privacy.dlp.v2beta1.StorageConfig"
    optional :request_output_config, :message, 7, "google.privacy.dlp.v2beta1.OutputStorageConfig"
  end
  add_message "google.privacy.dlp.v2beta1.InspectOperationResult" do
    optional :name, :string, 1
  end
  add_message "google.privacy.dlp.v2beta1.ListInspectFindingsRequest" do
    optional :name, :string, 1
    optional :page_size, :int32, 2
    optional :page_token, :string, 3
    optional :filter, :string, 4
  end
  add_message "google.privacy.dlp.v2beta1.ListInspectFindingsResponse" do
    optional :result, :message, 1, "google.privacy.dlp.v2beta1.InspectResult"
    optional :next_page_token, :string, 2
  end
  add_message "google.privacy.dlp.v2beta1.InfoTypeDescription" do
    optional :name, :string, 1
    optional :display_name, :string, 2
    repeated :categories, :message, 3, "google.privacy.dlp.v2beta1.CategoryDescription"
  end
  add_message "google.privacy.dlp.v2beta1.ListInfoTypesRequest" do
    optional :category, :string, 1
    optional :language_code, :string, 2
  end
  add_message "google.privacy.dlp.v2beta1.ListInfoTypesResponse" do
    repeated :info_types, :message, 1, "google.privacy.dlp.v2beta1.InfoTypeDescription"
  end
  add_message "google.privacy.dlp.v2beta1.CategoryDescription" do
    optional :name, :string, 1
    optional :display_name, :string, 2
  end
  add_message "google.privacy.dlp.v2beta1.ListRootCategoriesRequest" do
    optional :language_code, :string, 1
  end
  add_message "google.privacy.dlp.v2beta1.ListRootCategoriesResponse" do
    repeated :categories, :message, 1, "google.privacy.dlp.v2beta1.CategoryDescription"
  end
  add_enum "google.privacy.dlp.v2beta1.Likelihood" do
    value :LIKELIHOOD_UNSPECIFIED, 0
    value :VERY_UNLIKELY, 1
    value :UNLIKELY, 2
    value :POSSIBLE, 3
    value :LIKELY, 4
    value :VERY_LIKELY, 5
  end
end

module Google
  module Privacy
    module Dlp
      module V2beta1
        InspectConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.InspectConfig").msgclass
        ContentItem = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.ContentItem").msgclass
        InspectResult = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.InspectResult").msgclass
        Finding = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.Finding").msgclass
        Location = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.Location").msgclass
        Range = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.Range").msgclass
        ImageLocation = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.ImageLocation").msgclass
        RedactContentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.RedactContentRequest").msgclass
        RedactContentRequest::ReplaceConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.RedactContentRequest.ReplaceConfig").msgclass
        RedactContentRequest::ImageRedactionConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.RedactContentRequest.ImageRedactionConfig").msgclass
        Color = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.Color").msgclass
        RedactContentResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.RedactContentResponse").msgclass
        InspectContentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.InspectContentRequest").msgclass
        InspectContentResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.InspectContentResponse").msgclass
        CreateInspectOperationRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.CreateInspectOperationRequest").msgclass
        OutputStorageConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.OutputStorageConfig").msgclass
        InfoTypeStatistics = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.InfoTypeStatistics").msgclass
        InspectOperationMetadata = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.InspectOperationMetadata").msgclass
        InspectOperationResult = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.InspectOperationResult").msgclass
        ListInspectFindingsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.ListInspectFindingsRequest").msgclass
        ListInspectFindingsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.ListInspectFindingsResponse").msgclass
        InfoTypeDescription = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.InfoTypeDescription").msgclass
        ListInfoTypesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.ListInfoTypesRequest").msgclass
        ListInfoTypesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.ListInfoTypesResponse").msgclass
        CategoryDescription = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.CategoryDescription").msgclass
        ListRootCategoriesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.ListRootCategoriesRequest").msgclass
        ListRootCategoriesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.ListRootCategoriesResponse").msgclass
        Likelihood = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.privacy.dlp.v2beta1.Likelihood").enummodule
      end
    end
  end
end
