require 'rspec'
require './exercicio1'

describe ProtestePrinter do

  describe "#combinar_valores" do

    subject {ProtestePrinter}

    context "quando for multiplo de 5" do
      it "deveria retornar 'Pro' no lugar do numero 5" do
        expect(subject.combinar_valores[4]).to eql("Pro")
      end

      it "deveria retornar 'Pro' no lugar do numero 10" do
        expect(subject.combinar_valores[9]).to eql("Pro")
      end
    end

    context "quando for multiplo de 7" do
      it "deveria retornar 'Teste' no lugar do numero 7" do
        expect(subject.combinar_valores[6]).to eql("Teste")
      end

      it "deveria retornar 'Teste' no lugar do numero 14" do
        expect(subject.combinar_valores[13]).to eql("Teste")
      end
    end

    context "quando for multiplo de 35" do
      it "deveria retornar a palavra 'Proteste' no lugar do numero 35" do
        expect(subject.combinar_valores[34]).to eql("ProTeste")
      end
    end

    context "quando nao for multiplo" do
      it "deveria retornar o proprio numero" do
        expect(subject.combinar_valores[0]).to eql(1)
        expect(subject.combinar_valores[1]).to eql(2)
        expect(subject.combinar_valores[2]).to eql(3)
        expect(subject.combinar_valores[3]).to eql(4)
      end
    end
  end
end