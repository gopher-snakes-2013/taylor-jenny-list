require 'spec_helper'

describe Item do
		subject { Item.new(title: 'Lost Golden Ring', description: 'Lost at bottom of river, whispers things at you', price: '$1000') }
	
		it { should be_instance_of Item }
		its (:title) { should == 'Lost Golden Ring' }		
		its (:description) { should == 'Lost at bottom of river, whispers things at you' }
		its (:price) { should == '$1000' }


end