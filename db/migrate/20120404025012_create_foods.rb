class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
	    t.float :potassium
		t.float	:beta_crypt 
		t.float :calcium 
		t.float :panto_acid 
		t.float :iron 
		t.float :sodium 
		t.float :fa_mono 
		t.float :vivit_d_iu 
		t.float :copper 
		t.text  :gmwt_desc2
		t.float :ash 
		t.float :niacin 
		t.float :folic_acid 
		t.float :cholestrl 
		t.float :food_folate 
		t.float :fa_sat 
		t.float :energ_kcal 
		t.float :vit_b6 
		t.float :magnesium 
		t.float :choline_tot 
		t.text  :gmwt_desc1
		t.float :vit_c 
		t.float :lycopene 
		t.float :ndb_no 
		t.float :lut_zea 
		t.float :refuse_pct 
		t.float :riboflavin 
		t.float :fiber_td 
		t.float :water 
		t.float :vit_b12 
		t.float :folate_tot 
		t.float :phosphorus 
		t.float :sugar_tot 
		t.text  :food_name
		t.float :alpha_carot 
		t.float :manganese 
		t.float :gmwt_1 
		t.float :carbohydrt 
		t.float :zinc 
		t.float :retinol 
		t.float :gmwt_2 
		t.float :folate_dfe 
		t.float :fa_poly 
		t.float :vit_a_rae 
		t.float :selenium 
		t.float :protein 
		t.float :lipid_tot 
		t.float :vit_k 
		t.float :thiamin 
		t.float :vit_a_iu 
		t.float :beta_carot 
		t.float :vit_d_mcg 
		t.float :vit_e 		
		t.timestamps
    end
  end
end
