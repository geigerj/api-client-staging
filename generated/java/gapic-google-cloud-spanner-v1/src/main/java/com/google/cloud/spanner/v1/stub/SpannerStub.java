/*
 * Copyright 2017, Google Inc. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.google.cloud.spanner.v1.stub;

import com.google.api.core.BetaApi;
import com.google.api.gax.core.BackgroundResource;
import com.google.api.gax.rpc.ServerStreamingCallable;
import com.google.api.gax.rpc.UnaryCallable;
import com.google.protobuf.Empty;
import com.google.spanner.v1.BeginTransactionRequest;
import com.google.spanner.v1.CommitRequest;
import com.google.spanner.v1.CommitResponse;
import com.google.spanner.v1.CreateSessionRequest;
import com.google.spanner.v1.DeleteSessionRequest;
import com.google.spanner.v1.ExecuteSqlRequest;
import com.google.spanner.v1.GetSessionRequest;
import com.google.spanner.v1.PartialResultSet;
import com.google.spanner.v1.ReadRequest;
import com.google.spanner.v1.ResultSet;
import com.google.spanner.v1.RollbackRequest;
import com.google.spanner.v1.Session;
import com.google.spanner.v1.Transaction;
import javax.annotation.Generated;

// AUTO-GENERATED DOCUMENTATION AND CLASS
/**
 * Base stub class for Cloud Spanner API.
 *
 * <p>This class is for advanced usage and reflects the underlying API directly.
 */
@Generated("by GAPIC v0.0.5")
@BetaApi
public abstract class SpannerStub implements BackgroundResource {

  public UnaryCallable<CreateSessionRequest, Session> createSessionCallable() {
    throw new UnsupportedOperationException("Not implemented: createSessionCallable()");
  }

  public UnaryCallable<GetSessionRequest, Session> getSessionCallable() {
    throw new UnsupportedOperationException("Not implemented: getSessionCallable()");
  }

  public UnaryCallable<DeleteSessionRequest, Empty> deleteSessionCallable() {
    throw new UnsupportedOperationException("Not implemented: deleteSessionCallable()");
  }

  public UnaryCallable<ExecuteSqlRequest, ResultSet> executeSqlCallable() {
    throw new UnsupportedOperationException("Not implemented: executeSqlCallable()");
  }

  public ServerStreamingCallable<ExecuteSqlRequest, PartialResultSet>
      executeStreamingSqlCallable() {
    throw new UnsupportedOperationException("Not implemented: executeStreamingSqlCallable()");
  }

  public UnaryCallable<ReadRequest, ResultSet> readCallable() {
    throw new UnsupportedOperationException("Not implemented: readCallable()");
  }

  public ServerStreamingCallable<ReadRequest, PartialResultSet> streamingReadCallable() {
    throw new UnsupportedOperationException("Not implemented: streamingReadCallable()");
  }

  public UnaryCallable<BeginTransactionRequest, Transaction> beginTransactionCallable() {
    throw new UnsupportedOperationException("Not implemented: beginTransactionCallable()");
  }

  public UnaryCallable<CommitRequest, CommitResponse> commitCallable() {
    throw new UnsupportedOperationException("Not implemented: commitCallable()");
  }

  public UnaryCallable<RollbackRequest, Empty> rollbackCallable() {
    throw new UnsupportedOperationException("Not implemented: rollbackCallable()");
  }
}