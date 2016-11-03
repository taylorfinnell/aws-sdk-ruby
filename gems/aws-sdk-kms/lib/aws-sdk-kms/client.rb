# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration::IDENTIFIERS << :kms

module Aws
  module KMS
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs

      @identifier = :kms

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::CredentialsConfiguration)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::SignatureV4)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

      # @option options [required, Aws::CredentialProvider] :credentials
      #   Your AWS credentials. This can be an instance of any one of the
      #   following classes:
      #
      #   * `Aws::Credentials` - Used for configuring static, non-refreshing
      #     credentials.
      #
      #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
      #     from an EC2 IMDS on an EC2 instance.
      #
      #   * `Aws::SharedCredentials` - Used for loading credentials from a
      #     shared file, such as `~/.aws/config`.
      #
      #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
      #
      #   When `:credentials` are not configured directly, the following
      #   locations will be searched for credentials:
      #
      #   * `Aws.config[:credentials]`
      #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
      #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      #   * EC2 IMDS instance profile - When used by default, the timeouts are
      #     very aggressive. Construct and pass an instance of
      #     `Aws::InstanceProfileCredentails` to enable retries and extended
      #     timeouts.
      # @option options [required, String] :region
      #   The AWS region to connect to.  The configured `:region` is
      #   used to determine the service `:endpoint`. When not passed,
      #   a default `:region` is search for in the following locations:
      #
      #   * `Aws.config[:region]`
      #   * `ENV['AWS_REGION']`
      #   * `ENV['AMAZON_REGION']`
      #   * `ENV['AWS_DEFAULT_REGION']`
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Cancels the deletion of a customer master key (CMK). When this
      # operation is successful, the CMK is set to the `Disabled` state. To
      # enable a CMK, use EnableKey.
      #
      # For more information about scheduling and canceling deletion of a CMK,
      # see [Deleting Customer Master Keys][1] in the *AWS Key Management
      # Service Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html
      # @option params [required, String] :key_id
      #   The unique identifier for the customer master key (CMK) for which to
      #   cancel deletion.
      #
      #   To specify this value, use the unique key ID or the Amazon Resource
      #   Name (ARN) of the CMK. Examples:
      #
      #   * Unique key ID: 1234abcd-12ab-34cd-56ef-1234567890ab
      #
      #   * Key ARN:
      #     arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab
      #
      #   To obtain the unique key ID and key ARN for a given CMK, use ListKeys
      #   or DescribeKey.
      # @return [Types::CancelKeyDeletionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CancelKeyDeletionResponse#key_id #KeyId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.cancel_key_deletion({
      #     key_id: "KeyIdType", # required
      #   })
      #
      # @example Response structure
      #   resp.key_id #=> String
      # @overload cancel_key_deletion(params = {})
      # @param [Hash] params ({})
      def cancel_key_deletion(params = {}, options = {})
        req = build_request(:cancel_key_deletion, params)
        req.send_request(options)
      end

      # Creates a display name for a customer master key. An alias can be used
      # to identify a key and should be unique. The console enforces a
      # one-to-one mapping between the alias and a key. An alias name can
      # contain only alphanumeric characters, forward slashes (/), underscores
      # (\_), and dashes (-). An alias must start with the word "alias"
      # followed by a forward slash (alias/). An alias that begins with
      # "aws" after the forward slash (alias/aws...) is reserved by Amazon
      # Web Services (AWS).
      #
      # The alias and the key it is mapped to must be in the same AWS account
      # and the same region.
      #
      # To map an alias to a different key, call UpdateAlias.
      # @option params [required, String] :alias_name
      #   String that contains the display name. The name must start with the
      #   word "alias" followed by a forward slash (alias/). Aliases that
      #   begin with "alias/AWS" are reserved.
      # @option params [required, String] :target_key_id
      #   An identifier of the key for which you are creating the alias. This
      #   value cannot be another alias but can be a globally unique identifier
      #   or a fully specified ARN to a key.
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_alias({
      #     alias_name: "AliasNameType", # required
      #     target_key_id: "KeyIdType", # required
      #   })
      # @overload create_alias(params = {})
      # @param [Hash] params ({})
      def create_alias(params = {}, options = {})
        req = build_request(:create_alias, params)
        req.send_request(options)
      end

      # Adds a grant to a key to specify who can use the key and under what
      # conditions. Grants are alternate permission mechanisms to key
      # policies.
      #
      # For more information about grants, see [Grants][1] in the *AWS Key
      # Management Service Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/kms/latest/developerguide/grants.html
      # @option params [required, String] :key_id
      #   The unique identifier for the customer master key (CMK) that the grant
      #   applies to.
      #
      #   To specify this value, use the globally unique key ID or the Amazon
      #   Resource Name (ARN) of the key. Examples:
      #
      #   * Globally unique key ID: 12345678-1234-1234-1234-123456789012
      #
      #   * Key ARN:
      #     arn:aws:kms:us-west-2:123456789012:key/12345678-1234-1234-1234-123456789012
      # @option params [required, String] :grantee_principal
      #   The principal that is given permission to perform the operations that
      #   the grant permits.
      #
      #   To specify the principal, use the [Amazon Resource Name (ARN)][1] of
      #   an AWS principal. Valid AWS principals include AWS accounts (root),
      #   IAM users, federated users, and assumed role users. For examples of
      #   the ARN syntax to use for specifying a principal, see [AWS Identity
      #   and Access Management (IAM)][2] in the Example ARNs section of the
      #   *AWS General Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
      #   [2]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
      # @option params [String] :retiring_principal
      #   The principal that is given permission to retire the grant by using
      #   RetireGrant operation.
      #
      #   To specify the principal, use the [Amazon Resource Name (ARN)][1] of
      #   an AWS principal. Valid AWS principals include AWS accounts (root),
      #   IAM users, federated users, and assumed role users. For examples of
      #   the ARN syntax to use for specifying a principal, see [AWS Identity
      #   and Access Management (IAM)][2] in the Example ARNs section of the
      #   *AWS General Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
      #   [2]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
      # @option params [Array<String>] :operations
      #   A list of operations that the grant permits. The list can contain any
      #   combination of one or more of the following values:
      #
      #   * Decrypt
      #
      #   * Encrypt
      #
      #   * GenerateDataKey
      #
      #   * GenerateDataKeyWithoutPlaintext
      #
      #   * [ReEncryptFrom][1]
      #
      #   * [ReEncryptTo][1]
      #
      #   * CreateGrant
      #
      #   * RetireGrant
      #
      #   * DescribeKey
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/APIReference/API_ReEncrypt.html
      # @option params [Types::GrantConstraints] :constraints
      #   The conditions under which the operations permitted by the grant are
      #   allowed.
      #
      #   You can use this value to allow the operations permitted by the grant
      #   only when a specified encryption context is present. For more
      #   information, see [Encryption Context][1] in the *AWS Key Management
      #   Service Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html
      # @option params [Array<String>] :grant_tokens
      #   A list of grant tokens.
      #
      #   For more information, see [Grant Tokens][1] in the *AWS Key Management
      #   Service Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
      # @option params [String] :name
      #   A friendly name for identifying the grant. Use this value to prevent
      #   unintended creation of duplicate grants when retrying this request.
      #
      #   When this value is absent, all `CreateGrant` requests result in a new
      #   grant with a unique `GrantId` even if all the supplied parameters are
      #   identical. This can result in unintended duplicates when you retry the
      #   `CreateGrant` request.
      #
      #   When this value is present, you can retry a `CreateGrant` request with
      #   identical parameters; if the grant already exists, the original
      #   `GrantId` is returned without creating a new grant. Note that the
      #   returned grant token is unique with every `CreateGrant` request, even
      #   when a duplicate `GrantId` is returned. All grant tokens obtained in
      #   this way can be used interchangeably.
      # @return [Types::CreateGrantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateGrantResponse#grant_token #GrantToken} => String
      #   * {Types::CreateGrantResponse#grant_id #GrantId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_grant({
      #     key_id: "KeyIdType", # required
      #     grantee_principal: "PrincipalIdType", # required
      #     retiring_principal: "PrincipalIdType",
      #     operations: ["Decrypt"], # accepts Decrypt, Encrypt, GenerateDataKey, GenerateDataKeyWithoutPlaintext, ReEncryptFrom, ReEncryptTo, CreateGrant, RetireGrant, DescribeKey
      #     constraints: {
      #       encryption_context_subset: {
      #         "EncryptionContextKey" => "EncryptionContextValue",
      #       },
      #       encryption_context_equals: {
      #         "EncryptionContextKey" => "EncryptionContextValue",
      #       },
      #     },
      #     grant_tokens: ["GrantTokenType"],
      #     name: "GrantNameType",
      #   })
      #
      # @example Response structure
      #   resp.grant_token #=> String
      #   resp.grant_id #=> String
      # @overload create_grant(params = {})
      # @param [Hash] params ({})
      def create_grant(params = {}, options = {})
        req = build_request(:create_grant, params)
        req.send_request(options)
      end

      # Creates a customer master key (CMK).
      #
      # You can use a CMK to encrypt small amounts of data (4 KiB or less)
      # directly, but CMKs are more commonly used to encrypt data encryption
      # keys (DEKs), which are used to encrypt raw data. For more information
      # about DEKs and the difference between CMKs and DEKs, see the
      # following:
      #
      # * The GenerateDataKey operation
      #
      # * [AWS Key Management Service Concepts][1] in the *AWS Key Management
      #   Service Developer Guide*
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html
      # @option params [String] :policy
      #   The key policy to attach to the CMK.
      #
      #   If you specify a policy and do not set
      #   `BypassPolicyLockoutSafetyCheck` to true, the policy must meet the
      #   following criteria:
      #
      #   * It must allow the principal making the `CreateKey` request to make a
      #     subsequent PutKeyPolicy request on the CMK. This reduces the
      #     likelihood that the CMK becomes unmanageable. For more information,
      #     refer to the scenario in the [Default Key Policy][1] section in the
      #     *AWS Key Management Service Developer Guide*.
      #
      #   * The principal(s) specified in the key policy must exist and be
      #     visible to AWS KMS. When you create a new AWS principal (for
      #     example, an IAM user or role), you might need to enforce a delay
      #     before specifying the new principal in a key policy because the new
      #     principal might not immediately be visible to AWS KMS. For more
      #     information, see [Changes that I make are not always immediately
      #     visible][2] in the *IAM User Guide*.
      #
      #   If you do not specify a policy, AWS KMS attaches a default key policy
      #   to the CMK. For more information, see [Default Key Policy][3] in the
      #   *AWS Key Management Service Developer Guide*.
      #
      #   The policy size limit is 32 KiB (32768 bytes).
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
      #   [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency
      #   [3]: http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default
      # @option params [String] :description
      #   A description of the CMK.
      #
      #   Use a description that helps you decide whether the CMK is appropriate
      #   for a task.
      # @option params [String] :key_usage
      #   The intended use of the CMK.
      #
      #   You can use CMKs only for symmetric encryption and decryption.
      # @option params [String] :origin
      #   The source of the CMK's key material.
      #
      #   The default is `AWS_KMS`, which means AWS KMS creates the key
      #   material. When this parameter is set to `EXTERNAL`, the request
      #   creates a CMK without key material so that you can import key material
      #   from your existing key management infrastructure. For more information
      #   about importing key material into AWS KMS, see [Importing Key
      #   Material][1] in the *AWS Key Management Service Developer Guide*.
      #
      #   The CMK's `Origin` is immutable and is set when the CMK is created.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
      # @option params [Boolean] :bypass_policy_lockout_safety_check
      #   A flag to indicate whether to bypass the key policy lockout safety
      #   check.
      #
      #   Setting this value to true increases the likelihood that the CMK
      #   becomes unmanageable. Do not set this value to true indiscriminately.
      #
      #    For more information, refer to the scenario in the [Default Key
      #   Policy][1] section in the *AWS Key Management Service Developer
      #   Guide*.
      #
      #   Use this parameter only when you include a policy in the request and
      #   you intend to prevent the principal making the request from making a
      #   subsequent PutKeyPolicy request on the CMK.
      #
      #   The default value is false.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
      # @return [Types::CreateKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateKeyResponse#key_metadata #KeyMetadata} => Types::KeyMetadata
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_key({
      #     policy: "PolicyType",
      #     description: "DescriptionType",
      #     key_usage: "ENCRYPT_DECRYPT", # accepts ENCRYPT_DECRYPT
      #     origin: "AWS_KMS", # accepts AWS_KMS, EXTERNAL
      #     bypass_policy_lockout_safety_check: false,
      #   })
      #
      # @example Response structure
      #   resp.key_metadata.aws_account_id #=> String
      #   resp.key_metadata.key_id #=> String
      #   resp.key_metadata.arn #=> String
      #   resp.key_metadata.creation_date #=> Time
      #   resp.key_metadata.enabled #=> Boolean
      #   resp.key_metadata.description #=> String
      #   resp.key_metadata.key_usage #=> String, one of "ENCRYPT_DECRYPT"
      #   resp.key_metadata.key_state #=> String, one of "Enabled", "Disabled", "PendingDeletion", "PendingImport"
      #   resp.key_metadata.deletion_date #=> Time
      #   resp.key_metadata.valid_to #=> Time
      #   resp.key_metadata.origin #=> String, one of "AWS_KMS", "EXTERNAL"
      #   resp.key_metadata.expiration_model #=> String, one of "KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"
      # @overload create_key(params = {})
      # @param [Hash] params ({})
      def create_key(params = {}, options = {})
        req = build_request(:create_key, params)
        req.send_request(options)
      end

      # Decrypts ciphertext. Ciphertext is plaintext that has been previously
      # encrypted by using any of the following functions:
      #
      # * GenerateDataKey
      #
      # * GenerateDataKeyWithoutPlaintext
      #
      # * Encrypt
      #
      # Note that if a caller has been granted access permissions to all keys
      # (through, for example, IAM user policies that grant `Decrypt`
      # permission on all resources), then ciphertext encrypted by using keys
      # in other accounts where the key grants access to the caller can be
      # decrypted. To remedy this, we recommend that you do not grant
      # `Decrypt` access in an IAM user policy. Instead grant `Decrypt` access
      # only in key policies. If you must grant `Decrypt` access in an IAM
      # user policy, you should scope the resource to specific keys or to
      # specific trusted accounts.
      # @option params [required, String, IO] :ciphertext_blob
      #   Ciphertext to be decrypted. The blob includes metadata.
      # @option params [Hash<String,String>] :encryption_context
      #   The encryption context. If this was specified in the Encrypt function,
      #   it must be specified here or the decryption operation will fail. For
      #   more information, see [Encryption Context][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html
      # @option params [Array<String>] :grant_tokens
      #   A list of grant tokens.
      #
      #   For more information, see [Grant Tokens][1] in the *AWS Key Management
      #   Service Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
      # @return [Types::DecryptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DecryptResponse#key_id #KeyId} => String
      #   * {Types::DecryptResponse#plaintext #Plaintext} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.decrypt({
      #     ciphertext_blob: "data", # required
      #     encryption_context: {
      #       "EncryptionContextKey" => "EncryptionContextValue",
      #     },
      #     grant_tokens: ["GrantTokenType"],
      #   })
      #
      # @example Response structure
      #   resp.key_id #=> String
      #   resp.plaintext #=> String
      # @overload decrypt(params = {})
      # @param [Hash] params ({})
      def decrypt(params = {}, options = {})
        req = build_request(:decrypt, params)
        req.send_request(options)
      end

      # Deletes the specified alias. To map an alias to a different key, call
      # UpdateAlias.
      # @option params [required, String] :alias_name
      #   The alias to be deleted. The name must start with the word "alias"
      #   followed by a forward slash (alias/). Aliases that begin with
      #   "alias/AWS" are reserved.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_alias({
      #     alias_name: "AliasNameType", # required
      #   })
      # @overload delete_alias(params = {})
      # @param [Hash] params ({})
      def delete_alias(params = {}, options = {})
        req = build_request(:delete_alias, params)
        req.send_request(options)
      end

      # Deletes key material that you previously imported and makes the
      # specified customer master key (CMK) unusable. For more information
      # about importing key material into AWS KMS, see [Importing Key
      # Material][1] in the *AWS Key Management Service Developer Guide*.
      #
      # When the specified CMK is in the `PendingDeletion` state, this
      # operation does not change the CMK's state. Otherwise, it changes the
      # CMK's state to `PendingImport`.
      #
      # After you delete key material, you can use ImportKeyMaterial to
      # reimport the same key material into the CMK.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
      # @option params [required, String] :key_id
      #   The identifier of the CMK whose key material to delete. The CMK's
      #   `Origin` must be `EXTERNAL`.
      #
      #   A valid identifier is the unique key ID or the Amazon Resource Name
      #   (ARN) of the CMK. Examples:
      #
      #   * Unique key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
      #
      #   * Key ARN:
      #     `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_imported_key_material({
      #     key_id: "KeyIdType", # required
      #   })
      # @overload delete_imported_key_material(params = {})
      # @param [Hash] params ({})
      def delete_imported_key_material(params = {}, options = {})
        req = build_request(:delete_imported_key_material, params)
        req.send_request(options)
      end

      # Provides detailed information about the specified customer master key.
      # @option params [required, String] :key_id
      #   A unique identifier for the customer master key. This value can be a
      #   globally unique identifier, a fully specified ARN to either an alias
      #   or a key, or an alias name prefixed by "alias/".
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Alias ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:alias/MyAliasName
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      #
      #   * Alias Name Example - alias/MyAliasName
      # @option params [Array<String>] :grant_tokens
      #   A list of grant tokens.
      #
      #   For more information, see [Grant Tokens][1] in the *AWS Key Management
      #   Service Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
      # @return [Types::DescribeKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeKeyResponse#key_metadata #KeyMetadata} => Types::KeyMetadata
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_key({
      #     key_id: "KeyIdType", # required
      #     grant_tokens: ["GrantTokenType"],
      #   })
      #
      # @example Response structure
      #   resp.key_metadata.aws_account_id #=> String
      #   resp.key_metadata.key_id #=> String
      #   resp.key_metadata.arn #=> String
      #   resp.key_metadata.creation_date #=> Time
      #   resp.key_metadata.enabled #=> Boolean
      #   resp.key_metadata.description #=> String
      #   resp.key_metadata.key_usage #=> String, one of "ENCRYPT_DECRYPT"
      #   resp.key_metadata.key_state #=> String, one of "Enabled", "Disabled", "PendingDeletion", "PendingImport"
      #   resp.key_metadata.deletion_date #=> Time
      #   resp.key_metadata.valid_to #=> Time
      #   resp.key_metadata.origin #=> String, one of "AWS_KMS", "EXTERNAL"
      #   resp.key_metadata.expiration_model #=> String, one of "KEY_MATERIAL_EXPIRES", "KEY_MATERIAL_DOES_NOT_EXPIRE"
      # @overload describe_key(params = {})
      # @param [Hash] params ({})
      def describe_key(params = {}, options = {})
        req = build_request(:describe_key, params)
        req.send_request(options)
      end

      # Sets the state of a customer master key (CMK) to disabled, thereby
      # preventing its use for cryptographic operations. For more information
      # about how key state affects the use of a CMK, see [How Key State
      # Affects the Use of a Customer Master Key][1] in the *AWS Key
      # Management Service Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html
      # @option params [required, String] :key_id
      #   A unique identifier for the CMK.
      #
      #   Use the CMK's unique identifier or its Amazon Resource Name (ARN).
      #   For example:
      #
      #   * Unique ID: 1234abcd-12ab-34cd-56ef-1234567890ab
      #
      #   * ARN:
      #     arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.disable_key({
      #     key_id: "KeyIdType", # required
      #   })
      # @overload disable_key(params = {})
      # @param [Hash] params ({})
      def disable_key(params = {}, options = {})
        req = build_request(:disable_key, params)
        req.send_request(options)
      end

      # Disables rotation of the specified key.
      # @option params [required, String] :key_id
      #   A unique identifier for the customer master key. This value can be a
      #   globally unique identifier or the fully specified ARN to a key.
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.disable_key_rotation({
      #     key_id: "KeyIdType", # required
      #   })
      # @overload disable_key_rotation(params = {})
      # @param [Hash] params ({})
      def disable_key_rotation(params = {}, options = {})
        req = build_request(:disable_key_rotation, params)
        req.send_request(options)
      end

      # Marks a key as enabled, thereby permitting its use.
      # @option params [required, String] :key_id
      #   A unique identifier for the customer master key. This value can be a
      #   globally unique identifier or the fully specified ARN to a key.
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.enable_key({
      #     key_id: "KeyIdType", # required
      #   })
      # @overload enable_key(params = {})
      # @param [Hash] params ({})
      def enable_key(params = {}, options = {})
        req = build_request(:enable_key, params)
        req.send_request(options)
      end

      # Enables rotation of the specified customer master key.
      # @option params [required, String] :key_id
      #   A unique identifier for the customer master key. This value can be a
      #   globally unique identifier or the fully specified ARN to a key.
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.enable_key_rotation({
      #     key_id: "KeyIdType", # required
      #   })
      # @overload enable_key_rotation(params = {})
      # @param [Hash] params ({})
      def enable_key_rotation(params = {}, options = {})
        req = build_request(:enable_key_rotation, params)
        req.send_request(options)
      end

      # Encrypts plaintext into ciphertext by using a customer master key. The
      # `Encrypt` function has two primary use cases:
      #
      # * You can encrypt up to 4 KB of arbitrary data such as an RSA key, a
      #   database password, or other sensitive customer information.
      #
      # * If you are moving encrypted data from one region to another, you can
      #   use this API to encrypt in the new region the plaintext data key
      #   that was used to encrypt the data in the original region. This
      #   provides you with an encrypted copy of the data key that can be
      #   decrypted in the new region and used there to decrypt the encrypted
      #   data.
      #
      # Unless you are moving encrypted data from one region to another, you
      # don't use this function to encrypt a generated data key within a
      # region. You retrieve data keys already encrypted by calling the
      # GenerateDataKey or GenerateDataKeyWithoutPlaintext function. Data keys
      # don't need to be encrypted again by calling `Encrypt`.
      #
      # If you want to encrypt data locally in your application, you can use
      # the `GenerateDataKey` function to return a plaintext data encryption
      # key and a copy of the key encrypted under the customer master key
      # (CMK) of your choosing.
      # @option params [required, String] :key_id
      #   A unique identifier for the customer master key. This value can be a
      #   globally unique identifier, a fully specified ARN to either an alias
      #   or a key, or an alias name prefixed by "alias/".
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Alias ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:alias/MyAliasName
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      #
      #   * Alias Name Example - alias/MyAliasName
      # @option params [required, String, IO] :plaintext
      #   Data to be encrypted.
      # @option params [Hash<String,String>] :encryption_context
      #   Name-value pair that specifies the encryption context to be used for
      #   authenticated encryption. If used here, the same value must be
      #   supplied to the `Decrypt` API or decryption will fail. For more
      #   information, see [Encryption Context][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html
      # @option params [Array<String>] :grant_tokens
      #   A list of grant tokens.
      #
      #   For more information, see [Grant Tokens][1] in the *AWS Key Management
      #   Service Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
      # @return [Types::EncryptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EncryptResponse#ciphertext_blob #CiphertextBlob} => String
      #   * {Types::EncryptResponse#key_id #KeyId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.encrypt({
      #     key_id: "KeyIdType", # required
      #     plaintext: "data", # required
      #     encryption_context: {
      #       "EncryptionContextKey" => "EncryptionContextValue",
      #     },
      #     grant_tokens: ["GrantTokenType"],
      #   })
      #
      # @example Response structure
      #   resp.ciphertext_blob #=> String
      #   resp.key_id #=> String
      # @overload encrypt(params = {})
      # @param [Hash] params ({})
      def encrypt(params = {}, options = {})
        req = build_request(:encrypt, params)
        req.send_request(options)
      end

      # Returns a data encryption key that you can use in your application to
      # encrypt data locally.
      #
      # You must specify the customer master key (CMK) under which to generate
      # the data key. You must also specify the length of the data key using
      # either the `KeySpec` or `NumberOfBytes` field. You must specify one
      # field or the other, but not both. For common key lengths (128-bit and
      # 256-bit symmetric keys), we recommend that you use `KeySpec`.
      #
      # This operation returns a plaintext copy of the data key in the
      # `Plaintext` field of the response, and an encrypted copy of the data
      # key in the `CiphertextBlob` field. The data key is encrypted under the
      # CMK specified in the `KeyId` field of the request.
      #
      # We recommend that you use the following pattern to encrypt data
      # locally in your application:
      #
      # 1.  Use this operation (`GenerateDataKey`) to retrieve a data
      #     encryption key.
      #
      # 2.  Use the plaintext data encryption key (returned in the `Plaintext`
      #     field of the response) to encrypt data locally, then erase the
      #     plaintext data key from memory.
      #
      # 3.  Store the encrypted data key (returned in the `CiphertextBlob`
      #     field of the response) alongside the locally encrypted data.
      #
      # To decrypt data locally:
      #
      # 1.  Use the Decrypt operation to decrypt the encrypted data key into a
      #     plaintext copy of the data key.
      #
      # 2.  Use the plaintext data key to decrypt data locally, then erase the
      #     plaintext data key from memory.
      #
      # To return only an encrypted copy of the data key, use
      # GenerateDataKeyWithoutPlaintext. To return an arbitrary unpredictable
      # byte string, use GenerateRandom.
      #
      # If you use the optional `EncryptionContext` field, you must store at
      # least enough information to be able to reconstruct the full encryption
      # context when you later send the ciphertext to the Decrypt operation.
      # It is a good practice to choose an encryption context that you can
      # reconstruct on the fly to better secure the ciphertext. For more
      # information, see [Encryption Context][1] in the *AWS Key Management
      # Service Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html
      # @option params [required, String] :key_id
      #   The identifier of the CMK under which to generate and encrypt the data
      #   encryption key.
      #
      #   A valid identifier is the unique key ID or the Amazon Resource Name
      #   (ARN) of the CMK, or the alias name or ARN of an alias that points to
      #   the CMK. Examples:
      #
      #   * Unique key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
      #
      #   * CMK ARN:
      #     `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
      #
      #   * Alias name: `alias/ExampleAlias`
      #
      #   * Alias ARN: `arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias`
      # @option params [Hash<String,String>] :encryption_context
      #   A set of key-value pairs that represents additional authenticated
      #   data.
      #
      #   For more information, see [Encryption Context][1] in the *AWS Key
      #   Management Service Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html
      # @option params [Integer] :number_of_bytes
      #   The length of the data encryption key in bytes. For example, use the
      #   value 64 to generate a 512-bit data key (64 bytes is 512 bits). For
      #   common key lengths (128-bit and 256-bit symmetric keys), we recommend
      #   that you use the `KeySpec` field instead of this one.
      # @option params [String] :key_spec
      #   The length of the data encryption key. Use `AES_128` to generate a
      #   128-bit symmetric key, or `AES_256` to generate a 256-bit symmetric
      #   key.
      # @option params [Array<String>] :grant_tokens
      #   A list of grant tokens.
      #
      #   For more information, see [Grant Tokens][1] in the *AWS Key Management
      #   Service Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
      # @return [Types::GenerateDataKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GenerateDataKeyResponse#ciphertext_blob #CiphertextBlob} => String
      #   * {Types::GenerateDataKeyResponse#plaintext #Plaintext} => String
      #   * {Types::GenerateDataKeyResponse#key_id #KeyId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.generate_data_key({
      #     key_id: "KeyIdType", # required
      #     encryption_context: {
      #       "EncryptionContextKey" => "EncryptionContextValue",
      #     },
      #     number_of_bytes: 1,
      #     key_spec: "AES_256", # accepts AES_256, AES_128
      #     grant_tokens: ["GrantTokenType"],
      #   })
      #
      # @example Response structure
      #   resp.ciphertext_blob #=> String
      #   resp.plaintext #=> String
      #   resp.key_id #=> String
      # @overload generate_data_key(params = {})
      # @param [Hash] params ({})
      def generate_data_key(params = {}, options = {})
        req = build_request(:generate_data_key, params)
        req.send_request(options)
      end

      # Returns a data encryption key encrypted under a customer master key
      # (CMK). This operation is identical to GenerateDataKey but returns only
      # the encrypted copy of the data key.
      #
      # This operation is useful in a system that has multiple components with
      # different degrees of trust. For example, consider a system that stores
      # encrypted data in containers. Each container stores the encrypted data
      # and an encrypted copy of the data key. One component of the system,
      # called the *control plane*, creates new containers. When it creates a
      # new container, it uses this operation
      # (`GenerateDataKeyWithoutPlaintext`) to get an encrypted data key and
      # then stores it in the container. Later, a different component of the
      # system, called the *data plane*, puts encrypted data into the
      # containers. To do this, it passes the encrypted data key to the
      # Decrypt operation, then uses the returned plaintext data key to
      # encrypt data, and finally stores the encrypted data in the container.
      # In this system, the control plane never sees the plaintext data key.
      # @option params [required, String] :key_id
      #   The identifier of the CMK under which to generate and encrypt the data
      #   encryption key.
      #
      #   A valid identifier is the unique key ID or the Amazon Resource Name
      #   (ARN) of the CMK, or the alias name or ARN of an alias that points to
      #   the CMK. Examples:
      #
      #   * Unique key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
      #
      #   * CMK ARN:
      #     `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
      #
      #   * Alias name: `alias/ExampleAlias`
      #
      #   * Alias ARN: `arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias`
      # @option params [Hash<String,String>] :encryption_context
      #   A set of key-value pairs that represents additional authenticated
      #   data.
      #
      #   For more information, see [Encryption Context][1] in the *AWS Key
      #   Management Service Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html
      # @option params [String] :key_spec
      #   The length of the data encryption key. Use `AES_128` to generate a
      #   128-bit symmetric key, or `AES_256` to generate a 256-bit symmetric
      #   key.
      # @option params [Integer] :number_of_bytes
      #   The length of the data encryption key in bytes. For example, use the
      #   value 64 to generate a 512-bit data key (64 bytes is 512 bits). For
      #   common key lengths (128-bit and 256-bit symmetric keys), we recommend
      #   that you use the `KeySpec` field instead of this one.
      # @option params [Array<String>] :grant_tokens
      #   A list of grant tokens.
      #
      #   For more information, see [Grant Tokens][1] in the *AWS Key Management
      #   Service Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
      # @return [Types::GenerateDataKeyWithoutPlaintextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GenerateDataKeyWithoutPlaintextResponse#ciphertext_blob #CiphertextBlob} => String
      #   * {Types::GenerateDataKeyWithoutPlaintextResponse#key_id #KeyId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.generate_data_key_without_plaintext({
      #     key_id: "KeyIdType", # required
      #     encryption_context: {
      #       "EncryptionContextKey" => "EncryptionContextValue",
      #     },
      #     key_spec: "AES_256", # accepts AES_256, AES_128
      #     number_of_bytes: 1,
      #     grant_tokens: ["GrantTokenType"],
      #   })
      #
      # @example Response structure
      #   resp.ciphertext_blob #=> String
      #   resp.key_id #=> String
      # @overload generate_data_key_without_plaintext(params = {})
      # @param [Hash] params ({})
      def generate_data_key_without_plaintext(params = {}, options = {})
        req = build_request(:generate_data_key_without_plaintext, params)
        req.send_request(options)
      end

      # Generates an unpredictable byte string.
      # @option params [Integer] :number_of_bytes
      #   The length of the byte string.
      # @return [Types::GenerateRandomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GenerateRandomResponse#plaintext #Plaintext} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.generate_random({
      #     number_of_bytes: 1,
      #   })
      #
      # @example Response structure
      #   resp.plaintext #=> String
      # @overload generate_random(params = {})
      # @param [Hash] params ({})
      def generate_random(params = {}, options = {})
        req = build_request(:generate_random, params)
        req.send_request(options)
      end

      # Retrieves a policy attached to the specified key.
      # @option params [required, String] :key_id
      #   A unique identifier for the customer master key. This value can be a
      #   globally unique identifier or the fully specified ARN to a key.
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      # @option params [required, String] :policy_name
      #   String that contains the name of the policy. Currently, this must be
      #   "default". Policy names can be discovered by calling
      #   ListKeyPolicies.
      # @return [Types::GetKeyPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetKeyPolicyResponse#policy #Policy} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_key_policy({
      #     key_id: "KeyIdType", # required
      #     policy_name: "PolicyNameType", # required
      #   })
      #
      # @example Response structure
      #   resp.policy #=> String
      # @overload get_key_policy(params = {})
      # @param [Hash] params ({})
      def get_key_policy(params = {}, options = {})
        req = build_request(:get_key_policy, params)
        req.send_request(options)
      end

      # Retrieves a Boolean value that indicates whether key rotation is
      # enabled for the specified key.
      # @option params [required, String] :key_id
      #   A unique identifier for the customer master key. This value can be a
      #   globally unique identifier or the fully specified ARN to a key.
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      # @return [Types::GetKeyRotationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetKeyRotationStatusResponse#key_rotation_enabled #KeyRotationEnabled} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_key_rotation_status({
      #     key_id: "KeyIdType", # required
      #   })
      #
      # @example Response structure
      #   resp.key_rotation_enabled #=> Boolean
      # @overload get_key_rotation_status(params = {})
      # @param [Hash] params ({})
      def get_key_rotation_status(params = {}, options = {})
        req = build_request(:get_key_rotation_status, params)
        req.send_request(options)
      end

      # Returns the items you need in order to import key material into AWS
      # KMS from your existing key management infrastructure. For more
      # information about importing key material into AWS KMS, see [Importing
      # Key Material][1] in the *AWS Key Management Service Developer Guide*.
      #
      # You must specify the key ID of the customer master key (CMK) into
      # which you will import key material. This CMK's `Origin` must be
      # `EXTERNAL`. You must also specify the wrapping algorithm and type of
      # wrapping key (public key) that you will use to encrypt the key
      # material.
      #
      # This operation returns a public key and an import token. Use the
      # public key to encrypt the key material. Store the import token to send
      # with a subsequent ImportKeyMaterial request. The public key and import
      # token from the same response must be used together. These items are
      # valid for 24 hours, after which they cannot be used for a subsequent
      # ImportKeyMaterial request. To retrieve new ones, send another
      # `GetParametersForImport` request.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
      # @option params [required, String] :key_id
      #   The identifier of the CMK into which you will import key material. The
      #   CMK's `Origin` must be `EXTERNAL`.
      #
      #   A valid identifier is the unique key ID or the Amazon Resource Name
      #   (ARN) of the CMK. Examples:
      #
      #   * Unique key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
      #
      #   * Key ARN:
      #     `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
      # @option params [required, String] :wrapping_algorithm
      #   The algorithm you will use to encrypt the key material before
      #   importing it with ImportKeyMaterial. For more information, see
      #   [Encrypt the Key Material][1] in the *AWS Key Management Service
      #   Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys-encrypt-key-material.html
      # @option params [required, String] :wrapping_key_spec
      #   The type of wrapping key (public key) to return in the response. Only
      #   2048-bit RSA public keys are supported.
      # @return [Types::GetParametersForImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetParametersForImportResponse#key_id #KeyId} => String
      #   * {Types::GetParametersForImportResponse#import_token #ImportToken} => String
      #   * {Types::GetParametersForImportResponse#public_key #PublicKey} => String
      #   * {Types::GetParametersForImportResponse#parameters_valid_to #ParametersValidTo} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_parameters_for_import({
      #     key_id: "KeyIdType", # required
      #     wrapping_algorithm: "RSAES_PKCS1_V1_5", # required, accepts RSAES_PKCS1_V1_5, RSAES_OAEP_SHA_1, RSAES_OAEP_SHA_256
      #     wrapping_key_spec: "RSA_2048", # required, accepts RSA_2048
      #   })
      #
      # @example Response structure
      #   resp.key_id #=> String
      #   resp.import_token #=> String
      #   resp.public_key #=> String
      #   resp.parameters_valid_to #=> Time
      # @overload get_parameters_for_import(params = {})
      # @param [Hash] params ({})
      def get_parameters_for_import(params = {}, options = {})
        req = build_request(:get_parameters_for_import, params)
        req.send_request(options)
      end

      # Imports key material into an AWS KMS customer master key (CMK) from
      # your existing key management infrastructure. For more information
      # about importing key material into AWS KMS, see [Importing Key
      # Material][1] in the *AWS Key Management Service Developer Guide*.
      #
      # You must specify the key ID of the CMK to import the key material
      # into. This CMK's `Origin` must be `EXTERNAL`. You must also send an
      # import token and the encrypted key material. Send the import token
      # that you received in the same GetParametersForImport response that
      # contained the public key that you used to encrypt the key material.
      # You must also specify whether the key material expires and if so,
      # when. When the key material expires, AWS KMS deletes the key material
      # and the CMK becomes unusable. To use the CMK again, you can reimport
      # the same key material. If you set an expiration date, you can change
      # it only by reimporting the same key material and specifying a new
      # expiration date.
      #
      # When this operation is successful, the specified CMK's key state
      # changes to `Enabled`, and you can use the CMK.
      #
      # After you successfully import key material into a CMK, you can
      # reimport the same key material into that CMK, but you cannot import
      # different key material.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html
      # @option params [required, String] :key_id
      #   The identifier of the CMK to import the key material into. The CMK's
      #   `Origin` must be `EXTERNAL`.
      #
      #   A valid identifier is the unique key ID or the Amazon Resource Name
      #   (ARN) of the CMK. Examples:
      #
      #   * Unique key ID: `1234abcd-12ab-34cd-56ef-1234567890ab`
      #
      #   * Key ARN:
      #     `arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab`
      # @option params [required, String, IO] :import_token
      #   The import token that you received in the response to a previous
      #   GetParametersForImport request. It must be from the same response that
      #   contained the public key that you used to encrypt the key material.
      # @option params [required, String, IO] :encrypted_key_material
      #   The encrypted key material to import. It must be encrypted with the
      #   public key that you received in the response to a previous
      #   GetParametersForImport request, using the wrapping algorithm that you
      #   specified in that request.
      # @option params [Time,DateTime,Date,Integer,String] :valid_to
      #   The time at which the imported key material expires. When the key
      #   material expires, AWS KMS deletes the key material and the CMK becomes
      #   unusable. You must omit this parameter when the `ExpirationModel`
      #   parameter is set to `KEY_MATERIAL_DOES_NOT_EXPIRE`. Otherwise it is
      #   required.
      # @option params [String] :expiration_model
      #   Specifies whether the key material expires. The default is
      #   `KEY_MATERIAL_EXPIRES`, in which case you must include the `ValidTo`
      #   parameter. When this parameter is set to
      #   `KEY_MATERIAL_DOES_NOT_EXPIRE`, you must omit the `ValidTo` parameter.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.import_key_material({
      #     key_id: "KeyIdType", # required
      #     import_token: "data", # required
      #     encrypted_key_material: "data", # required
      #     valid_to: Time.now,
      #     expiration_model: "KEY_MATERIAL_EXPIRES", # accepts KEY_MATERIAL_EXPIRES, KEY_MATERIAL_DOES_NOT_EXPIRE
      #   })
      # @overload import_key_material(params = {})
      # @param [Hash] params ({})
      def import_key_material(params = {}, options = {})
        req = build_request(:import_key_material, params)
        req.send_request(options)
      end

      # Lists all of the key aliases in the account.
      # @option params [Integer] :limit
      #   When paginating results, specify the maximum number of items to return
      #   in the response. If additional items exist beyond the number you
      #   specify, the `Truncated` element in the response is set to true.
      #
      #   This value is optional. If you include a value, it must be between 1
      #   and 100, inclusive. If you do not include a value, it defaults to 50.
      # @option params [String] :marker
      #   Use this parameter only when paginating results and only in a
      #   subsequent request after you receive a response with truncated
      #   results. Set it to the value of `NextMarker` from the response you
      #   just received.
      # @return [Types::ListAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListAliasesResponse#aliases #Aliases} => Array&lt;Types::AliasListEntry&gt;
      #   * {Types::ListAliasesResponse#next_marker #NextMarker} => String
      #   * {Types::ListAliasesResponse#truncated #Truncated} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_aliases({
      #     limit: 1,
      #     marker: "MarkerType",
      #   })
      #
      # @example Response structure
      #   resp.aliases #=> Array
      #   resp.aliases[0].alias_name #=> String
      #   resp.aliases[0].alias_arn #=> String
      #   resp.aliases[0].target_key_id #=> String
      #   resp.next_marker #=> String
      #   resp.truncated #=> Boolean
      # @overload list_aliases(params = {})
      # @param [Hash] params ({})
      def list_aliases(params = {}, options = {})
        req = build_request(:list_aliases, params)
        req.send_request(options)
      end

      # List the grants for a specified key.
      # @option params [Integer] :limit
      #   When paginating results, specify the maximum number of items to return
      #   in the response. If additional items exist beyond the number you
      #   specify, the `Truncated` element in the response is set to true.
      #
      #   This value is optional. If you include a value, it must be between 1
      #   and 100, inclusive. If you do not include a value, it defaults to 50.
      # @option params [String] :marker
      #   Use this parameter only when paginating results and only in a
      #   subsequent request after you receive a response with truncated
      #   results. Set it to the value of `NextMarker` from the response you
      #   just received.
      # @option params [required, String] :key_id
      #   A unique identifier for the customer master key. This value can be a
      #   globally unique identifier or the fully specified ARN to a key.
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      # @return [Types::ListGrantsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListGrantsResponse#grants #Grants} => Array&lt;Types::GrantListEntry&gt;
      #   * {Types::ListGrantsResponse#next_marker #NextMarker} => String
      #   * {Types::ListGrantsResponse#truncated #Truncated} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_grants({
      #     limit: 1,
      #     marker: "MarkerType",
      #     key_id: "KeyIdType", # required
      #   })
      #
      # @example Response structure
      #   resp.grants #=> Array
      #   resp.grants[0].key_id #=> String
      #   resp.grants[0].grant_id #=> String
      #   resp.grants[0].name #=> String
      #   resp.grants[0].creation_date #=> Time
      #   resp.grants[0].grantee_principal #=> String
      #   resp.grants[0].retiring_principal #=> String
      #   resp.grants[0].issuing_account #=> String
      #   resp.grants[0].operations #=> Array
      #   resp.grants[0].operations[0] #=> String, one of "Decrypt", "Encrypt", "GenerateDataKey", "GenerateDataKeyWithoutPlaintext", "ReEncryptFrom", "ReEncryptTo", "CreateGrant", "RetireGrant", "DescribeKey"
      #   resp.grants[0].constraints.encryption_context_subset #=> Hash
      #   resp.grants[0].constraints.encryption_context_subset["EncryptionContextKey"] #=> String
      #   resp.grants[0].constraints.encryption_context_equals #=> Hash
      #   resp.grants[0].constraints.encryption_context_equals["EncryptionContextKey"] #=> String
      #   resp.next_marker #=> String
      #   resp.truncated #=> Boolean
      # @overload list_grants(params = {})
      # @param [Hash] params ({})
      def list_grants(params = {}, options = {})
        req = build_request(:list_grants, params)
        req.send_request(options)
      end

      # Retrieves a list of policies attached to a key.
      # @option params [required, String] :key_id
      #   A unique identifier for the customer master key. This value can be a
      #   globally unique identifier, a fully specified ARN to either an alias
      #   or a key, or an alias name prefixed by "alias/".
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Alias ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:alias/MyAliasName
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      #
      #   * Alias Name Example - alias/MyAliasName
      # @option params [Integer] :limit
      #   When paginating results, specify the maximum number of items to return
      #   in the response. If additional items exist beyond the number you
      #   specify, the `Truncated` element in the response is set to true.
      #
      #   This value is optional. If you include a value, it must be between 1
      #   and 1000, inclusive. If you do not include a value, it defaults to
      #   100.
      #
      #   Currently only 1 policy can be attached to a key.
      # @option params [String] :marker
      #   Use this parameter only when paginating results and only in a
      #   subsequent request after you receive a response with truncated
      #   results. Set it to the value of `NextMarker` from the response you
      #   just received.
      # @return [Types::ListKeyPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListKeyPoliciesResponse#policy_names #PolicyNames} => Array&lt;String&gt;
      #   * {Types::ListKeyPoliciesResponse#next_marker #NextMarker} => String
      #   * {Types::ListKeyPoliciesResponse#truncated #Truncated} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_key_policies({
      #     key_id: "KeyIdType", # required
      #     limit: 1,
      #     marker: "MarkerType",
      #   })
      #
      # @example Response structure
      #   resp.policy_names #=> Array
      #   resp.policy_names[0] #=> String
      #   resp.next_marker #=> String
      #   resp.truncated #=> Boolean
      # @overload list_key_policies(params = {})
      # @param [Hash] params ({})
      def list_key_policies(params = {}, options = {})
        req = build_request(:list_key_policies, params)
        req.send_request(options)
      end

      # Lists the customer master keys.
      # @option params [Integer] :limit
      #   When paginating results, specify the maximum number of items to return
      #   in the response. If additional items exist beyond the number you
      #   specify, the `Truncated` element in the response is set to true.
      #
      #   This value is optional. If you include a value, it must be between 1
      #   and 1000, inclusive. If you do not include a value, it defaults to
      #   100.
      # @option params [String] :marker
      #   Use this parameter only when paginating results and only in a
      #   subsequent request after you receive a response with truncated
      #   results. Set it to the value of `NextMarker` from the response you
      #   just received.
      # @return [Types::ListKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListKeysResponse#keys #Keys} => Array&lt;Types::KeyListEntry&gt;
      #   * {Types::ListKeysResponse#next_marker #NextMarker} => String
      #   * {Types::ListKeysResponse#truncated #Truncated} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_keys({
      #     limit: 1,
      #     marker: "MarkerType",
      #   })
      #
      # @example Response structure
      #   resp.keys #=> Array
      #   resp.keys[0].key_id #=> String
      #   resp.keys[0].key_arn #=> String
      #   resp.next_marker #=> String
      #   resp.truncated #=> Boolean
      # @overload list_keys(params = {})
      # @param [Hash] params ({})
      def list_keys(params = {}, options = {})
        req = build_request(:list_keys, params)
        req.send_request(options)
      end

      # Returns a list of all grants for which the grant's
      # `RetiringPrincipal` matches the one specified.
      #
      # A typical use is to list all grants that you are able to retire. To
      # retire a grant, use RetireGrant.
      # @option params [Integer] :limit
      #   When paginating results, specify the maximum number of items to return
      #   in the response. If additional items exist beyond the number you
      #   specify, the `Truncated` element in the response is set to true.
      #
      #   This value is optional. If you include a value, it must be between 1
      #   and 100, inclusive. If you do not include a value, it defaults to 50.
      # @option params [String] :marker
      #   Use this parameter only when paginating results and only in a
      #   subsequent request after you receive a response with truncated
      #   results. Set it to the value of `NextMarker` from the response you
      #   just received.
      # @option params [required, String] :retiring_principal
      #   The retiring principal for which to list grants.
      #
      #   To specify the retiring principal, use the [Amazon Resource Name
      #   (ARN)][1] of an AWS principal. Valid AWS principals include AWS
      #   accounts (root), IAM users, federated users, and assumed role users.
      #   For examples of the ARN syntax for specifying a principal, see [AWS
      #   Identity and Access Management (IAM)][2] in the Example ARNs section
      #   of the *Amazon Web Services General Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
      #   [2]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam
      # @return [Types::ListGrantsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListGrantsResponse#grants #Grants} => Array&lt;Types::GrantListEntry&gt;
      #   * {Types::ListGrantsResponse#next_marker #NextMarker} => String
      #   * {Types::ListGrantsResponse#truncated #Truncated} => Boolean
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_retirable_grants({
      #     limit: 1,
      #     marker: "MarkerType",
      #     retiring_principal: "PrincipalIdType", # required
      #   })
      #
      # @example Response structure
      #   resp.grants #=> Array
      #   resp.grants[0].key_id #=> String
      #   resp.grants[0].grant_id #=> String
      #   resp.grants[0].name #=> String
      #   resp.grants[0].creation_date #=> Time
      #   resp.grants[0].grantee_principal #=> String
      #   resp.grants[0].retiring_principal #=> String
      #   resp.grants[0].issuing_account #=> String
      #   resp.grants[0].operations #=> Array
      #   resp.grants[0].operations[0] #=> String, one of "Decrypt", "Encrypt", "GenerateDataKey", "GenerateDataKeyWithoutPlaintext", "ReEncryptFrom", "ReEncryptTo", "CreateGrant", "RetireGrant", "DescribeKey"
      #   resp.grants[0].constraints.encryption_context_subset #=> Hash
      #   resp.grants[0].constraints.encryption_context_subset["EncryptionContextKey"] #=> String
      #   resp.grants[0].constraints.encryption_context_equals #=> Hash
      #   resp.grants[0].constraints.encryption_context_equals["EncryptionContextKey"] #=> String
      #   resp.next_marker #=> String
      #   resp.truncated #=> Boolean
      # @overload list_retirable_grants(params = {})
      # @param [Hash] params ({})
      def list_retirable_grants(params = {}, options = {})
        req = build_request(:list_retirable_grants, params)
        req.send_request(options)
      end

      # Attaches a key policy to the specified customer master key (CMK).
      #
      # For more information about key policies, see [Key Policies][1] in the
      # *AWS Key Management Service Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html
      # @option params [required, String] :key_id
      #   A unique identifier for the CMK.
      #
      #   Use the CMK's unique identifier or its Amazon Resource Name (ARN).
      #   For example:
      #
      #   * Unique ID: 1234abcd-12ab-34cd-56ef-1234567890ab
      #
      #   * ARN:
      #     arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab
      # @option params [required, String] :policy_name
      #   The name of the key policy.
      #
      #   This value must be `default`.
      # @option params [required, String] :policy
      #   The key policy to attach to the CMK.
      #
      #   If you do not set `BypassPolicyLockoutSafetyCheck` to true, the policy
      #   must meet the following criteria:
      #
      #   * It must allow the principal making the `PutKeyPolicy` request to
      #     make a subsequent `PutKeyPolicy` request on the CMK. This reduces
      #     the likelihood that the CMK becomes unmanageable. For more
      #     information, refer to the scenario in the [Default Key Policy][1]
      #     section in the *AWS Key Management Service Developer Guide*.
      #
      #   * The principal(s) specified in the key policy must exist and be
      #     visible to AWS KMS. When you create a new AWS principal (for
      #     example, an IAM user or role), you might need to enforce a delay
      #     before specifying the new principal in a key policy because the new
      #     principal might not immediately be visible to AWS KMS. For more
      #     information, see [Changes that I make are not always immediately
      #     visible][2] in the *IAM User Guide*.
      #
      #   The policy size limit is 32 KiB (32768 bytes).
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
      #   [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency
      # @option params [Boolean] :bypass_policy_lockout_safety_check
      #   A flag to indicate whether to bypass the key policy lockout safety
      #   check.
      #
      #   Setting this value to true increases the likelihood that the CMK
      #   becomes unmanageable. Do not set this value to true indiscriminately.
      #
      #    For more information, refer to the scenario in the [Default Key
      #   Policy][1] section in the *AWS Key Management Service Developer
      #   Guide*.
      #
      #   Use this parameter only when you intend to prevent the principal
      #   making the request from making a subsequent `PutKeyPolicy` request on
      #   the CMK.
      #
      #   The default value is false.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_key_policy({
      #     key_id: "KeyIdType", # required
      #     policy_name: "PolicyNameType", # required
      #     policy: "PolicyType", # required
      #     bypass_policy_lockout_safety_check: false,
      #   })
      # @overload put_key_policy(params = {})
      # @param [Hash] params ({})
      def put_key_policy(params = {}, options = {})
        req = build_request(:put_key_policy, params)
        req.send_request(options)
      end

      # Encrypts data on the server side with a new customer master key
      # without exposing the plaintext of the data on the client side. The
      # data is first decrypted and then encrypted. This operation can also be
      # used to change the encryption context of a ciphertext.
      #
      # Unlike other actions, `ReEncrypt` is authorized twice - once as
      # `ReEncryptFrom` on the source key and once as `ReEncryptTo` on the
      # destination key. We therefore recommend that you include the
      # `"action":"kms:ReEncrypt*"` statement in your key policies to permit
      # re-encryption from or to the key. The statement is included
      # automatically when you authorize use of the key through the console
      # but must be included manually when you set a policy by using the
      # PutKeyPolicy function.
      # @option params [required, String, IO] :ciphertext_blob
      #   Ciphertext of the data to re-encrypt.
      # @option params [Hash<String,String>] :source_encryption_context
      #   Encryption context used to encrypt and decrypt the data specified in
      #   the `CiphertextBlob` parameter.
      # @option params [required, String] :destination_key_id
      #   A unique identifier for the customer master key used to re-encrypt the
      #   data. This value can be a globally unique identifier, a fully
      #   specified ARN to either an alias or a key, or an alias name prefixed
      #   by "alias/".
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Alias ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:alias/MyAliasName
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      #
      #   * Alias Name Example - alias/MyAliasName
      # @option params [Hash<String,String>] :destination_encryption_context
      #   Encryption context to be used when the data is re-encrypted.
      # @option params [Array<String>] :grant_tokens
      #   A list of grant tokens.
      #
      #   For more information, see [Grant Tokens][1] in the *AWS Key Management
      #   Service Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token
      # @return [Types::ReEncryptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ReEncryptResponse#ciphertext_blob #CiphertextBlob} => String
      #   * {Types::ReEncryptResponse#source_key_id #SourceKeyId} => String
      #   * {Types::ReEncryptResponse#key_id #KeyId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.re_encrypt({
      #     ciphertext_blob: "data", # required
      #     source_encryption_context: {
      #       "EncryptionContextKey" => "EncryptionContextValue",
      #     },
      #     destination_key_id: "KeyIdType", # required
      #     destination_encryption_context: {
      #       "EncryptionContextKey" => "EncryptionContextValue",
      #     },
      #     grant_tokens: ["GrantTokenType"],
      #   })
      #
      # @example Response structure
      #   resp.ciphertext_blob #=> String
      #   resp.source_key_id #=> String
      #   resp.key_id #=> String
      # @overload re_encrypt(params = {})
      # @param [Hash] params ({})
      def re_encrypt(params = {}, options = {})
        req = build_request(:re_encrypt, params)
        req.send_request(options)
      end

      # Retires a grant. You can retire a grant when you're done using it to
      # clean up. You should revoke a grant when you intend to actively deny
      # operations that depend on it. The following are permitted to call this
      # API:
      #
      # * The account that created the grant
      #
      # * The `RetiringPrincipal`, if present
      #
      # * The `GranteePrincipal`, if `RetireGrant` is a grantee operation
      #
      # The grant to retire must be identified by its grant token or by a
      # combination of the key ARN and the grant ID. A grant token is a unique
      # variable-length base64-encoded string. A grant ID is a 64 character
      # unique identifier of a grant. Both are returned by the `CreateGrant`
      # function.
      # @option params [String] :grant_token
      #   Token that identifies the grant to be retired.
      # @option params [String] :key_id
      #   A unique identifier for the customer master key associated with the
      #   grant. This value can be a globally unique identifier or a fully
      #   specified ARN of the key.
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      # @option params [String] :grant_id
      #   Unique identifier of the grant to be retired. The grant ID is returned
      #   by the `CreateGrant` function.
      #
      #   * Grant ID Example -
      #     0123456789012345678901234567890123456789012345678901234567890123
      #
      #   ^
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.retire_grant({
      #     grant_token: "GrantTokenType",
      #     key_id: "KeyIdType",
      #     grant_id: "GrantIdType",
      #   })
      # @overload retire_grant(params = {})
      # @param [Hash] params ({})
      def retire_grant(params = {}, options = {})
        req = build_request(:retire_grant, params)
        req.send_request(options)
      end

      # Revokes a grant. You can revoke a grant to actively deny operations
      # that depend on it.
      # @option params [required, String] :key_id
      #   A unique identifier for the customer master key associated with the
      #   grant. This value can be a globally unique identifier or the fully
      #   specified ARN to a key.
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      # @option params [required, String] :grant_id
      #   Identifier of the grant to be revoked.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.revoke_grant({
      #     key_id: "KeyIdType", # required
      #     grant_id: "GrantIdType", # required
      #   })
      # @overload revoke_grant(params = {})
      # @param [Hash] params ({})
      def revoke_grant(params = {}, options = {})
        req = build_request(:revoke_grant, params)
        req.send_request(options)
      end

      # Schedules the deletion of a customer master key (CMK). You may provide
      # a waiting period, specified in days, before deletion occurs. If you do
      # not provide a waiting period, the default period of 30 days is used.
      # When this operation is successful, the state of the CMK changes to
      # `PendingDeletion`. Before the waiting period ends, you can use
      # CancelKeyDeletion to cancel the deletion of the CMK. After the waiting
      # period ends, AWS KMS deletes the CMK and all AWS KMS data associated
      # with it, including all aliases that point to it.
      #
      # Deleting a CMK is a destructive and potentially dangerous operation.
      # When a CMK is deleted, all data that was encrypted under the CMK is
      # rendered unrecoverable. To restrict the use of a CMK without deleting
      # it, use DisableKey.
      #
      # For more information about scheduling a CMK for deletion, see
      # [Deleting Customer Master Keys][1] in the *AWS Key Management Service
      # Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html
      # @option params [required, String] :key_id
      #   The unique identifier for the customer master key (CMK) to delete.
      #
      #   To specify this value, use the unique key ID or the Amazon Resource
      #   Name (ARN) of the CMK. Examples:
      #
      #   * Unique key ID: 1234abcd-12ab-34cd-56ef-1234567890ab
      #
      #   * Key ARN:
      #     arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab
      #
      #   To obtain the unique key ID and key ARN for a given CMK, use ListKeys
      #   or DescribeKey.
      # @option params [Integer] :pending_window_in_days
      #   The waiting period, specified in number of days. After the waiting
      #   period ends, AWS KMS deletes the customer master key (CMK).
      #
      #   This value is optional. If you include a value, it must be between 7
      #   and 30, inclusive. If you do not include a value, it defaults to 30.
      # @return [Types::ScheduleKeyDeletionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ScheduleKeyDeletionResponse#key_id #KeyId} => String
      #   * {Types::ScheduleKeyDeletionResponse#deletion_date #DeletionDate} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.schedule_key_deletion({
      #     key_id: "KeyIdType", # required
      #     pending_window_in_days: 1,
      #   })
      #
      # @example Response structure
      #   resp.key_id #=> String
      #   resp.deletion_date #=> Time
      # @overload schedule_key_deletion(params = {})
      # @param [Hash] params ({})
      def schedule_key_deletion(params = {}, options = {})
        req = build_request(:schedule_key_deletion, params)
        req.send_request(options)
      end

      # Updates an alias to map it to a different key.
      #
      # An alias is not a property of a key. Therefore, an alias can be mapped
      # to and unmapped from an existing key without changing the properties
      # of the key.
      #
      # An alias name can contain only alphanumeric characters, forward
      # slashes (/), underscores (\_), and dashes (-). An alias must start
      # with the word "alias" followed by a forward slash (alias/). An alias
      # that begins with "aws" after the forward slash (alias/aws...) is
      # reserved by Amazon Web Services (AWS).
      #
      # The alias and the key it is mapped to must be in the same AWS account
      # and the same region.
      # @option params [required, String] :alias_name
      #   String that contains the name of the alias to be modified. The name
      #   must start with the word "alias" followed by a forward slash
      #   (alias/). Aliases that begin with "alias/aws" are reserved.
      # @option params [required, String] :target_key_id
      #   Unique identifier of the customer master key to be mapped to the
      #   alias. This value can be a globally unique identifier or the fully
      #   specified ARN of a key.
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      #
      #   You can call ListAliases to verify that the alias is mapped to the
      #   correct `TargetKeyId`.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_alias({
      #     alias_name: "AliasNameType", # required
      #     target_key_id: "KeyIdType", # required
      #   })
      # @overload update_alias(params = {})
      # @param [Hash] params ({})
      def update_alias(params = {}, options = {})
        req = build_request(:update_alias, params)
        req.send_request(options)
      end

      # Updates the description of a key.
      # @option params [required, String] :key_id
      #   A unique identifier for the customer master key. This value can be a
      #   globally unique identifier or the fully specified ARN to a key.
      #
      #   * Key ARN Example -
      #     arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
      #
      #   * Globally Unique Key ID Example -
      #     12345678-1234-1234-1234-123456789012
      # @option params [required, String] :description
      #   New description for the key.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_key_description({
      #     key_id: "KeyIdType", # required
      #     description: "DescriptionType", # required
      #   })
      # @overload update_key_description(params = {})
      # @param [Hash] params ({})
      def update_key_description(params = {}, options = {})
        req = build_request(:update_key_description, params)
        req.send_request(options)
      end

      # @!endgroup

      # @api private
      # @deprecated
      def waiter_names
        []
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end
