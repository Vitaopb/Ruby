require 'cpf_cnpj'

def validation(cpfOK)
  if CPF.valid?(cpfOK) == true
    return "O CPF #{cpfOK} é valido!"
  else
    return "Esse CPF não é valido!"
  end  
end

print "Digite seu CPF: "
cpf = gets.chomp
cpf.gsub!(/[-.]/, '')


puts validation(cpf)

