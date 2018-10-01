module Common
  def format_datetime(datetime)
    datetime.strftime('%Y年%m月%d日 %I:%M:%S')
  end
end