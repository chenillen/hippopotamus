# @Author: Allen C <chenillen>
# @Date:   2019-10-29T14:28:43+08:00
# @Email:  chenillen@gmail.com
# @Last modified by:   chenillen
# @Last modified time: 2019-10-29T14:51:38+08:00
# @Copyright: Copyright (c) 2019 by Allen C.(@chenillen). All Rights Reserved.

RSpec.describe Hippopotamus do
  it 'has a version number' do
    expect(Hippopotamus::VERSION).not_to be nil
  end

  it 'requires redis' do
    expect(Redis).not_to be nil
  end

  it 'requires rest-client' do
    expect(RestClient).not_to be nil
  end
end
