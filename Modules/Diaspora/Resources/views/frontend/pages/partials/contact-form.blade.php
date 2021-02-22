<!-- Contact Form -->
<div class="contact-form" id="contact">
    <form method="post" class="container" data-parsley-validate>
        <h3>Contact With Us</h3>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <input type="text" name="txtName" class="form-control" placeholder="Your Name *" required/>
                </div>
                <div class="form-group">
                    <input type="email" name="txtEmail" class="form-control" placeholder="Your Email *" required/>
                </div>
                <div class="form-group">
                    <input type="text" name="txtPhone" class="form-control" placeholder="Your Phone Number *" required/>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <textarea name="txtMsg" class="form-control" placeholder="Your Message *" style="width: 100%; height: 150px;" required></textarea>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <button type="submit" name="btnSubmit" class="btnContact">
                        Send Message <i class="fa fa-arrow-right"></i> 
                    </button>
                </div>
            </div>
        </div>
    </form>
</div>
<!-- /.contact-form -->