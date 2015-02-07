require_relative '../lib/arc_length'

  describe ArcLength do

    it 'has a version number' do
      expect(ArcLength::VERSION).not_to be nil
    end

    describe ".new" do

      context "without passing radius" do
        it "should raise error" do
          expect{ ArcLength::Circle.new() }.to raise_error
        end
      end

      context "passing radius" do
        it "should not raise error" do
          expect{ ArcLength::Circle.new(5) }.not_to raise_error
        end
      end

      context "passing a string as radius" do
        it "should return 0" do
          expect{ ArcLength::Circle.new("string") }.eql?(0)
        end
      end

    end

    let(:arc_length_a) { ArcLength::Circle.new(5) }

    describe ".calculate_arc_length" do

      context "without passing arc_measure" do
        it "should raise error" do
          expect{ arc_length_a.calculate_arc_length() }.to raise_error(ArgumentError)
        end

      end

      context "passing in a string" do
        it "should not raise an error" do
          expect{ arc_length_a.calculate_arc_length("String") }.eql?(0)
        end

      end

      context "passing in an integer" do
        it "should be a numeric" do
          expect{ arc_length_a.calculate_arc_length(5) }.is_a?(Numeric)
        end

      end

      let(:arc_length_b) { ArcLength::Circle.new("string a") }

        context " Circle initialized with a string" do
          it "should raise and error" do
            expect{ arc_length_b.calculate_arc_length("string b") }.to raise_error(ArgumentError)
          end
        end
    end

  end