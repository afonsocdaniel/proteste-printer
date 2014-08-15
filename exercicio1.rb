class ProtestePrinter

  def self.combinar_valores
    (1..100).map do |i|
      valor = (i % 5 == 0) ? "Pro" : ""
      valor += "Teste" if i % 7 == 0
      valor = i if valor.empty?

      valor
    end
  end

  def self.print
    puts combinar_valores
  end
end

# Exibindo o resultado
ProtestePrinter.print