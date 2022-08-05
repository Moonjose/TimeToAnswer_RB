require 'net/http'

class CEP
  attr_reader :logradouro, :bairro, :localidade, :uf 

  def initialize(cep)
    cep_econtrado = findy(cep)
    fill_data(cep_econtrado)
  end
  
  def endereco
    "#{@logradouro} / #{@bairro} / #{@localidade} - #{@uf}"
  end

  private

  def fill_data(cep_econtrado)
    @logradouro = cep_econtrado["logradouro"]
    @bairro     = cep_econtrado["bairro"]
    @localidade = cep_econtrado["localidade"]
    @uf         = cep_econtrado["uf"]
  end

  def findy(cep)
    ActiveSupport::JSON.decode(
      Net::HTTP.get(
        URI("https://viacep.com.br/ws/#{cep}/json")
      )
    )
  end
end