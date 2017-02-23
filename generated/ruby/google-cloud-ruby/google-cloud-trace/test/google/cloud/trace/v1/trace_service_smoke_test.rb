# Copyright 2017, Google Inc. All rights reserved.#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# AUTO GENERATED BY GAPIC

require "minitest/autorun"
require "minitest/spec"
require "google/cloud/trace/v1/trace_service_client"

describe "TraceServiceSmokeTest" do
  it "runs one smoke test with list_traces" do
    unless ENV["SMOKE_TEST_PROJECT"]
      fail "Usage: SMOKE_TEST_PROJECT=<project_id> ruby #{$0}"
    end
    project_id = ENV["SMOKE_TEST_PROJECT"].freeze

    ListTracesRequest = Google::Devtools::Cloudtrace::V1::ListTracesRequest
    ListTracesResponse = Google::Devtools::Cloudtrace::V1::ListTracesResponse
    Timestamp = Google::Protobuf::Timestamp
    Trace = Google::Devtools::Cloudtrace::V1::Trace
    TraceServiceClient = Google::Cloud::Trace::V1::TraceServiceClient
    ViewType = Google::Devtools::Cloudtrace::V1::ListTracesRequest::ViewType

    trace_service_client = TraceServiceClient.new
    project_id_2 = project_id

    # Iterate over all results.
    trace_service_client.list_traces(project_id_2).each do |element|
      # Process element.
    end

    # Or iterate over results one page at a time.
    trace_service_client.list_traces(project_id_2).each_page do |page|
      # Process each page at a time.
      page.each do |element|
        # Process element.
      end
    end
  end
end