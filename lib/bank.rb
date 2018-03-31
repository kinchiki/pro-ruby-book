require_relative './deep_freezable'

class Bank
  extend DeepFreezable

  CORRENCIES = deep_freeze({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' })
end
