describe Film do
  describe "Class Methods" do
    describe ".total_box_office_sales" do
      it "returns total box office sales for all films" do
        Film.create(title: "Fargo", year: 2017, box_office_sales: 3)
        Film.create(title: "Die Hard", year: 2016, box_office_sales: 4)

        total = Film.total_box_office_sales

        expect(total).to eq(7)
      end
    end
  end

  describe "Validations" do
    it "is invalid without a title" do
      film = Film.new(year: 2017, box_office_sales: 3)

      expect(film).to be_invalid
    end
  end
end