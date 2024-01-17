module ApiKeysHelper
  def self.encrypt_key(raw_key)
    cryptor.encrypt_and_sign(raw_key)
  end

  def self.decrypt_key(encrypted_key)
    cryptor.decrypt_and_verify(encrypted_key)
  end

  private

  def self.cryptor
    @cryptor ||= ActiveSupport::MessageEncryptor.new(secret, signature_secret)
  end

  def self.secret
    signature_secret[0..31]
  end

  def self.signature_secret
    Rails.application.credentials.secret_key_base
  end
end
