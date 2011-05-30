class IndivsController < AuthorizedController
  # GET /indivs
  # GET /indivs.xml
  helper_method :sort_column, :sort_direction
  caches_action :index
  
  
  
  def index
    @indivs = Indiv.search(params[:search]).order(sort_column + ' '+ sort_direction).paginate(:per_page => 20, :page => params[:page])
	
	respond_to do |format|
	  format.js
      format.html # index.html.erb
      format.xml  { render :xml => @indivs }
    end
  end

  # GET /indivs/1
  # GET /indivs/1.xml
  def show
    @indiv = Indiv.find(params[:id])
	
	@orgs = @indiv.orgs
	
	respond_to do |format|
		format.html # show.html.erb
		format.xml  { render :xml => @indiv }
	end
  end
	
 

  # GET /indivs/new
  # GET /indivs/new.xml
  def new
    @indiv = Indiv.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @indiv }
    end
  end

  # GET /indivs/1/edit
  def edit
    @indiv = Indiv.find(params[:id])
  end

  # POST /indivs
  # POST /indivs.xml
  def create
    @indiv = Indiv.new(params[:indiv])

    respond_to do |format|
      if @indiv.save
        format.html { redirect_to(@indiv, :notice => 'Indiv was successfully created.') }
        format.xml  { render :xml => @indiv, :status => :created, :location => @indiv }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @indiv.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /indivs/1
  # PUT /indivs/1.xml
  def update
    @indiv = Indiv.find(params[:id])

    respond_to do |format|
      if @indiv.update_attributes(params[:indiv])
        format.html { redirect_to(@indiv, :notice => 'Indiv was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @indiv.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /indivs/1
  # DELETE /indivs/1.xml
  def destroy
    @indiv = Indiv.find(params[:id])
    @indiv.destroy

    respond_to do |format|
      format.html { redirect_to(indivs_url) }
      format.xml  { head :ok }
    end
  end
  
private
  
  def sort_column
	Indiv.column_names.include?(params[:sort]) ? params[:sort] : "bucket_1_rank"
  end
  
  
  def sort_direction
	%w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end
end
