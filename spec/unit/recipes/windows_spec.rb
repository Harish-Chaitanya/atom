#
# Cookbook Name:: chef-atom
# windows_spec.rb
#
# Copyright (c) 2016 Doug Ireton
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

RSpec.describe 'atom::windows' do
  include_context 'windows-2012r2'

  it 'downloads and installs the latest version of the Atom package' do
    expect(chef_run).to install_package('Atom').with(
      source: 'https://atom.io/download/windows',
      remote_file_attributes: {
        path: 'c:/chef/cache/AtomSetup.exe'
      },
      installer_type: :custom,
      options: '/silent'
    )
  end
end
