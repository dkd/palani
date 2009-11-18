require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Image do
  
  before(:each) do
    @image = Image.new(:photo_file_name => "Test.jpg")
  end
  
  describe "name" do
  
    it "should not have an extension" do
      @image.name.should_not match(/[.][a-zA-Z]*/)
    end
  
  end
  
  describe "file_size" do
    
    it "should return the file size in Kilobytes, if the file size is lower than 1 Megabyte" do
      @image.photo_file_size = 500*1024
      @image.file_size.should match(/[KB]/)
    end
    
    it "should return the file size in Megabytes, if the file size is greater than or equals 1 Megabyte" do
      @image.photo_file_size = 5000*1024
      @image.file_size.should match(/[MB]/)
    end
    
  end

end
