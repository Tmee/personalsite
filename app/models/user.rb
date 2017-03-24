class User < ActiveRecord::Base
  has_attached_file :resume, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/resume1.pdf"
  validates_attachment_content_type :resume, :content_type => ["image/jpg",
                                                              "image/jpeg",
                                                              "image/png",
                                                              "image/gif",
                                                              "application/pdf"]

end
