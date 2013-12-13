require 'b_good'

describe "DSL" do

    it "suma" do
        @sum = MatrizDSL.new("suma") do
            operand [[1,2,3],[4,5,6],[7,8,9]]
            operand [[1,1,1],[1,1,1],[1,1,1]]
        end
        @sum.run.should eq([[2,3,4],[5,6,7],[8,9,10]])
    end
end