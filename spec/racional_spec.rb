require_relative "../lib/gema/racional"

RSpec.describe Gema do
        context Racional do
                before(:each) do
                        @r1 = Racional.new(1,2)
                        @r2 = Racional.new(1,4)
                        @r3 = Racional.new(2,6)
                end
		context "Creacion de un racional" do 
	    	 it "Se debe poder instanciar un numero racional" do
			 expect(@r1).not_to be(nil)     

	    	 end
	    	 it "Se accede correctamente al numerador" do  
	    		 expect(@r1.n).to eq(1)
	    	 end
	    	 it "Se accede correctamente al denominador" do 
	    		 expect(@r1.d).to eq(2)
	    	 end
	    	 it "Se crea una cadena con el numero racional formateado" do 
	    		 expect(@r1.to_s).to eq("1/2")
	    	 end
		end

		context "Operaciones con numeros racionales" do
			it "Se calcula correctamente la sua de dos numeros" do
				expect(((@r1)+(@r2)).n).to eq(2)
				expect(((@r1)+(@r2)).d).to eq(6)
			end
			it "Se calcula correctamente la resta de dos numeros" do
                                expect(((@r3)-(@r2)).n).to eq(1)
                                expect(((@r3)-(@r2)).d).to eq(2)
                        end
			it "Se calcula correctamente el producto de dos racionales" do
				expect(((@r3)*(@r2)).n).to eq(2)
                                expect(((@r3)*(@r2)).d).to eq(24)
			end
			it "Se calcula correctamente la division de dos racionales" do
                                expect(((@r3)/(@r2)).n).to eq(8)
                                expect(((@r3)/(@r2)).d).to eq(6)
                        end
		end

	 end
end
