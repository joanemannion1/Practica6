require_relative "../lib/gema/complejo"

RSpec.describe Gema do
        context Complejo do
                before(:each) do
                        @c1 = Complejo.new(1,2)
                        @c2 = Complejo.new(1,4)
                        @c3 = Complejo.new(2,6)
                end
                context "Creacion de un complejo" do
                 it "Se debe poder instanciar un numero complejo" do
                         expect(@c1).not_to be(nil)

                 end
                 it "Se accede correctamente al real" do
                         expect(@c1.r).to eq(1)
                 end
                 it "Se accede correctamente al imaginario" do
                         expect(@c1.i).to eq(2)
                 end
                 it "Se crea una cadena con el numero complejo formateado" do
                         expect(@c1.to_s).to eq("1+2i")
                 end
                end

                context "Operaciones con numeros complejos" do
                        it "Se calcula correctamente la sua de dos numeros" do
                                expect(((@c1)+(@c2)).r).to eq(2)
                                expect(((@c1)+(@c2)).i).to eq(6)
                        end
                        it "Se calcula correctamente la resta de dos numeros" do
                                expect(((@c3)-(@c2)).r).to eq(1)
                                expect(((@c3)-(@c2)).i).to eq(2)
                        end
                        it "Se calcula correctamente el producto de dos complejos" do
                                expect(((@c3)*(@c2)).r).to eq(2)
                                expect(((@c3)*(@c2)).i).to eq(24)
                        end
                        it "Se calcula correctamente la division de dos complejos" do
                                expect(((@c3)/(@c1)).r).to eq(2)
                                expect(((@c3)/(@c1)).i).to eq(3)
                        end
                end

         end
end
