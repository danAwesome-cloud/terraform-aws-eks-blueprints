/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: MIT-0
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this
 * software and associated documentation files (the "Software"), to deal in the Software
 * without restriction, including without limitation the rights to use, copy, modify,
 * merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 * INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 * OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

output "amazon_prometheus_ingest_iam_role_arn" {
  description = "Amazon Managed Prometheus Ingest IAM Role ARN"
  value       = module.irsa.*.ingest.irsa_iam_role_arn[0]
}

output "amazon_prometheus_query_iam_role_arn" {
  description = "Amazon Managed Prometheus Query IAM Role ARN"
  value       = module.irsa.*.query.irsa_iam_role_arn[0]
}

output "amazon_prometheus_workspace_id" {
  description = "Amazon Managed Prometheus Workspace ID"
  value       = aws_prometheus_workspace.amp_workspace.id
}

output "amazon_prometheus_ingest_service_account" {
  value = local.irsa_config.ingest.service_account
}

output "amazon_prometheus_query_service_account" {
  value = local.irsa_config.query.service_account
}