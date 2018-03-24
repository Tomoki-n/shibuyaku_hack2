class PostController < ApplicationController
  def new
    @post = Post.new
    @texts = create_text
  end

  def show
    @posts = Post.all
    @texts = create_text
  end

  def create
    @post = create_post_params
    if @post.save
      redirect_to '/post/1'
    else
      render 'new'
    end
  end
  def secret
    @posts = Post.all
    @texts = create_text
  end

  def plus
    @post = Post.find(params[:id])
    @post.plus += 1
    @post.save
    redirect_to :action => "show"
  end

  def minus
    @post = Post.find(params[:id])
    @post.minus += 1
    @post.save
    redirect_to :action => "show"
  end


  def create_post_params
    @post = Post.new
    @post[:main_text] = params[:text]
    @post[:category] = params[:category]
    @post[:contact] =  params[:contact]
    @post[:language] = params[:language_type]
    @post[:can_viewing] = params[:can_viewing]
    #@post[:image] = params[:file].read

    return @post
  end

  def create_text
    @texts = {}
    if params[:id] == "1" || params[:id] == nil
      @texts[:title] = "シブヤクポスト"
      @texts[:info] = "こんにちは，シブヤクポストです．これは，渋谷区についてあらゆるメッセージを送ることが出来るWeb意見箱です．渋谷区でのちょっとした困りごと，こういうことができたらいいなというアイディア…自由に書きこんでください！"
      @texts[:language] = "言語を選択してください．(Please select a language.)"
      @texts[:category_name] = "どのようなメッセージですか？"
      @texts[:category_1] = "こういうことできたらいいな！"
      @texts[:category_2] = "困っています！"
      @texts[:category_3] = "渋谷区でこんなものを発見した！"
      @texts[:category_4] = "渋谷区への質問"
      @texts[:category_5] = "その他のメッセージ"
      @texts[:opinion_text] = "メッセージ"
      @texts[:view_setting] = "公開設定"
      @texts[:view_1] = "公開"
      @texts[:view_2] = "非公開"
      @texts[:temp] = "写真添付"
      @texts[:contact] = "連絡先"
      @texts[:submit] = "投稿する"
      @texts[:post_date] = "投稿日:"
      @texts[:language_type] = "1"
    elsif params[:id] == "2"
      @texts[:title] = "Shibuyaku Post"
      @texts[:info] = "This is a web opinion box that can send any message about Shibuya City.A little troubles, ideas that you want to do in Shibuya… Please write freely!"
      @texts[:language] = "Please select a language."
      @texts[:category_name] = "What kind of message?"
      @texts[:category_1] = "I wish I could do this in Shibuya..."
      @texts[:category_2] = "Help!"
      @texts[:category_3] = "I found this in Shibuya!"
      @texts[:category_4] = "Questions"
      @texts[:category_5] = "Other messages"
      @texts[:opinion_text] = "Message"
      @texts[:view_setting] = "Publishing Settings"
      @texts[:view_1] = "Release"
      @texts[:view_2] = "Private"
      @texts[:temp] = "Photo attachment"
      @texts[:contact] = "contact information"
      @texts[:submit] = "Post"
      @texts[:post_date] = "Posted date："
      @texts[:language_type] = "2"
    elsif params[:id] == "3"
      @texts[:title] = "시부야 쿠 포스트"
      @texts[:info] = "안녕하세요, Shibuyaku Post입니다.이것은 시부야 (Shibuya)시에 관한 메시지를 보낼 수있는 웹 의견 상자입니다.시부야에서하고 싶은 작은 문제, 아이디어 ...자유롭게 쓰십시오!"
      @texts[:language] = "언어를 선택하십시오."
      @texts[:category_name] = "어떤 종류의 메시지?"
      @texts[:category_1] = "시부야에서 할 수 있으면 좋겠다."
      @texts[:category_2] = "도움!"
      @texts[:category_3] = "나는 이것을 시부야에서 발견했다!"
      @texts[:category_4] = "질문들"
      @texts[:category_5] = "기타 메시지"
      @texts[:opinion_text] = "메시지"
      @texts[:view_setting] = "게시 설정"
      @texts[:view_1] = "해제"
      @texts[:view_2] = "은밀한"
      @texts[:temp] = "사진 첨부"
      @texts[:contact] = "연락처"
      @texts[:submit] = "게시하다"
      @texts[:post_date] = "투고 일："
      @texts[:language_type] = "3"
    elsif params[:id] == "4"
      @texts[:title] = "shibuyaku邮政"
      @texts[:info] = "你好，这是Shibuyaku Post。这是一个网络意见箱，可以发送关于涩谷城的任何消息。一些小麻烦，你想在涩谷做的想法......请自由写！"
      @texts[:language] = "请选择一种语言。"
      @texts[:category_name] = "什么样的消息？"
      @texts[:category_1] = "我希望我能在涩谷做到这一点..."
      @texts[:category_2] = "帮帮我！"
      @texts[:category_3] = "我在涩谷发现了这个！"
      @texts[:category_4] = "问题"
      @texts[:category_5] = "其他消息"
      @texts[:opinion_text] = "信息"
      @texts[:view_setting] = "发布设置"
      @texts[:view_1] = "发布"
      @texts[:view_2] = "私人的"
      @texts[:temp] = "照片附件"
      @texts[:contact] = "联系地址"
      @texts[:submit] = "岗位"
      @texts[:post_date] = "发布日期："
      @texts[:language_type] = "4"
    end
    return @texts
  end
end


