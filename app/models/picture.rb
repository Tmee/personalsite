class Picture < ActiveRecord::Base
  has_attached_file :file, styles: { medium: "200x200>", thumb: "100x100>" }
  validates_attachment_content_type :file, :content_type => ["image/jpg",
                                                              "image/jpeg",
                                                              "image/png",
                                                              "image/gif",
                                                              "application/pdf"]
end
