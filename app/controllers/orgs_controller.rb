class OrgsController < AuthorizedController
  # GET /orgs
  # GET /orgs.xml
  
  layout 'orgs'
  
  helper_method :sort_column, :sort_direction
  caches_action :index
  
  autocomplete :org, :orgname
  
  def index
    @orgs = Org.search(params[:search]).order(sort_column + ' '+ sort_direction).paginate(:per_page => 20, :page => params[:page])

    respond_to do |format|
	  format.js
      format.html # index.html.erb
      format.xml  { render :xml => @orgs }
    end
  end

  # GET /orgs/1
  # GET /orgs/1.xml
  def show
    @org = Org.find(params[:id])
	@json = @org.to_gmaps4rails
	@indivs = @org.indivs
	

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @org }
    end
  end

  # GET /orgs/new
  # GET /orgs/new.xml
  def new
    @org = Org.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @org }
    end
  end

  # GET /orgs/1/edit
  def edit
    @org = Org.find(params[:id])
  end

  # POST /orgs
  # POST /orgs.xml
  def create
    @org = Org.new(params[:org])

    respond_to do |format|
      if @org.save
        format.html { redirect_to(@org, :notice => 'Org was successfully created.') }
        format.xml  { render :xml => @org, :status => :created, :location => @org }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @org.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /orgs/1
  # PUT /orgs/1.xml
  def update
    @org = Org.find(params[:id])

    respond_to do |format|
      if @org.update_attributes(params[:org])
        format.html { redirect_to(@org, :notice => 'Org was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @org.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /orgs/1
  # DELETE /orgs/1.xml
  def destroy
    @org = Org.find(params[:id])
    @org.destroy

    respond_to do |format|
      format.html { redirect_to(orgs_url) }
      format.xml  { head :ok }
    end
  end
  
  def territories
	@orgs = Org.find_all_by_zipcode('44484')
  end
  private
  
  def sort_column
	Org.column_names.include?(params[:sort]) ? params[:sort] : "org_bucket_1_rank"
  end
  
  
  def sort_direction
	%w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end
end
