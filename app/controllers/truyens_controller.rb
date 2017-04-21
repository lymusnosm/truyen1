class TruyensController < ApplicationController
  def show
    @theloais=Theloai.all
    @truyen = Truyen.find(params[:id])
    @binhluans=@truyen.binhluans.order("created_at DESC")
    @binhluan = Binhluan.new
  end
  def all
    @theloais=Theloai.all
    @truyens=Truyen.order("name_vn ASC")
  end
end
