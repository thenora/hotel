module Hotel
  class DateRange
    attr_reader :start_date, :end_date 
    attr_accessor :dates

    def initialize(start_date:, end_date:)
      @start_date = start_date
      @end_date = end_date
      @dates = Array(@start_date .. @end_date)
    
      # User: I want an exception raised when an invalid date range is provided, so that I can't make a reservation for an invalid date range
      if @end_date < @start_date || @start_date == @end_date
        raise ArgumentError.new("Your check-out date must be after your check-in.")
      end
    end

    def overlap?(daterange_instance)
      overlap = !(daterange_instance.start_date >= end_date || daterange_instance.end_date <= start_date)
      return overlap
    end

    def include?(date)
      if date >= @start_date && date < @end_date 
        return true 
      else 
        return false
      end 
    end

    # calculate the number of nights for a reservation (end date is not a night)
    def nights
      return @dates.length - 1
    end
  end
end
