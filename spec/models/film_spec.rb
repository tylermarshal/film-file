RSpec.describe Film do
  describe "Class Methods" do
    describe ".total_box_office_sales" do
      it "return total sales for all films" do
        Film.create(title: "Fargo", year: 2017, box_office_sales: 3)
        Film.create(title: "Die Hard", year: 2016, box_office_sales: 4)

        expect(Film.total_box_office_sales).to eq(7)
      end
    end
    describe ".average_box_office_sales" do
      it "returns average box office sales" do
        Film.create(title: "Fargo", year: 2017, box_office_sales: 3)
        Film.create(title: "Die Hard", year: 2016, box_office_sales: 5)

        expect(Film.average_box_office_sales).to eq(4)
      end
    end
  end

  describe "Validations" do
    it "is invalid without a title" do
      film = Film.new(year: 2017, box_office_sales: 2)

      expect(film).to be_invalid
    end
    it "is invalid without year" do
      film = Film.new(title: "Drop Dead Fred", box_office_sales: 5)

      expect(film).to be_invalid
    end
    it "is invalid without box_office_sales" do
      film = Film.new(title: "Drop Dead Fred", year: 1980)

      expect(film).to be_invalid
    end
  end
end
