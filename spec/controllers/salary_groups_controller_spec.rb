require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SalaryGroupsController do

  # This should return the minimal set of attributes required to create a valid
  # SalaryGroup. As you add validations to SalaryGroup, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {
        :salary_group_name => "Test",
        :based_on_gross => false
    }
  end

  after(:each) do
    SalaryGroup.destroy_all
  end

  describe "GET index" do
    it "assigns all salary_groups as @salary_groups" do
      salary_group = SalaryGroup.create! valid_attributes
      get :index
      assigns(:salary_groups).should eq([salary_group])
    end
  end

  describe "GET show" do
    it "assigns the requested salary_group as @salary_group" do
      salary_group = SalaryGroup.create! valid_attributes
      get :show, :id => salary_group.id
      assigns(:salary_group).should eq(salary_group)
    end
  end

  describe "GET new" do
    it "assigns a new salary_group as @salary_group" do
      get :new
      assigns(:salary_group).should be_a_new(SalaryGroup)
    end
  end

  describe "GET edit" do
    it "assigns the requested salary_group as @salary_group" do
      salary_group = SalaryGroup.create! valid_attributes
      get :edit, :id => salary_group.id
      assigns(:salary_group).should eq(salary_group)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SalaryGroup" do
        expect {
          post :create, :salary_group => valid_attributes
        }.to change(SalaryGroup, :count).by(1)
      end

      it "assigns a newly created salary_group as @salary_group" do
        post :create, :salary_group => valid_attributes
        assigns(:salary_group).should be_a(SalaryGroup)
        assigns(:salary_group).should be_persisted
      end

      it "redirects to the created salary_group" do
        post :create, :salary_group => valid_attributes
        response.should redirect_to(SalaryGroup.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved salary_group as @salary_group" do
        # Trigger the behavior that occurs when invalid params are submitted
        SalaryGroup.any_instance.stub(:save).and_return(false)
        post :create, :salary_group => {}
        assigns(:salary_group).should be_a_new(SalaryGroup)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SalaryGroup.any_instance.stub(:save).and_return(false)
        post :create, :salary_group => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested salary_group" do
        salary_group = SalaryGroup.create! valid_attributes
        # Assuming there are no other salary_groups in the database, this
        # specifies that the SalaryGroup created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SalaryGroup.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => salary_group.id, :salary_group => {'these' => 'params'}
      end

      it "assigns the requested salary_group as @salary_group" do
        salary_group = SalaryGroup.create! valid_attributes
        put :update, :id => salary_group.id, :salary_group => valid_attributes
        assigns(:salary_group).should eq(salary_group)
      end

      it "redirects to the salary_group" do
        salary_group = SalaryGroup.create! valid_attributes
        put :update, :id => salary_group.id, :salary_group => valid_attributes
        response.should redirect_to(salary_group)
      end
    end

    describe "with invalid params" do
      it "assigns the salary_group as @salary_group" do
        salary_group = SalaryGroup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SalaryGroup.any_instance.stub(:save).and_return(false)
        put :update, :id => salary_group.id, :salary_group => {}
        assigns(:salary_group).should eq(salary_group)
      end

      it "re-renders the 'edit' template" do
        salary_group = SalaryGroup.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SalaryGroup.any_instance.stub(:save).and_return(false)
        put :update, :id => salary_group.id, :salary_group => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested salary_group" do
      salary_group = SalaryGroup.create! valid_attributes
      expect {
        delete :destroy, :id => salary_group.id
      }.to change(SalaryGroup, :count).by(-1)
    end

    it "redirects to the salary_groups list" do
      salary_group = SalaryGroup.create! valid_attributes
      delete :destroy, :id => salary_group.id
      response.should redirect_to(salary_groups_url)
    end
  end

end
