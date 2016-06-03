<?php
include './config/config.php';
$contact_name = '';
$contact_email = '';
$contact_subject = '';
$contact_message = '';
$contact_created_on = date('Y-m-d H:i:s');
$success = '';
$error = '';
if (isset($_POST['contact_name'])) {
    extract($_POST);
    $contact_name = validateInput($contact_name);
    $contact_email = validateInput($contact_email);
    $contact_subject = validateInput($contact_subject);
    $contact_message = validateInput($contact_message);

    $insert_array = '';
    $insert_array .= 'contact_name = "' . $contact_name . '"';
    $insert_array .= ',contact_email = "' . $contact_email . '"';
    $insert_array .= ',contact_subject = "' . $contact_subject . '"';
    $insert_array .= ',contact_message = "' . $contact_message . '"';
    $insert_array .= ',contact_created_on = "' . $contact_created_on . '"';

    $sql = "INSERT INTO contact SET $insert_array";
    $result = mysqli_query($con, $sql);
    if ($result) {
        $success = 'Thankyou. We will contact with you very soon.';
    } else {
        if (DEBUG) {
            $error = 'result query failed for ' . mysqli_error($con);
        } else {
            $error = 'Something went wrong. Please try again.';
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration Co. Ltd | Contact US</title>
        <?php include './header_script.php'; ?>
    </head>
    <body id="boxed">
        <div class="boxed-wrapper">
            <?php include './header.php'; ?>  
            <div class="breadcrumb-wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4>Contact us</h4>
                        </div>
                        <div class="col-sm-6 hidden-xs text-right">
                            <ol class="breadcrumb">
                                <li><a href="index.php">HOME</a></li>
                                <li>CONTACT US</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="divide80"></div>
                <div class="row">
                    <div class="col-md-12 ">
                        <div class="row">                           

                        </div>
                        <div class="row margin40">
                            <div class="col-md-4 margin30">
                                <div class="contact-option-circle">
                                    <i class="fa fa-home"></i>
                                    <p>Alook Tower (3rd Floor), 47/1 Shahid Tajuddin</p>
                                    <p> Ahmed Sarani, Mohakhali,Dhaka-1212</p>
                                </div>
                            </div>
                            <div class="col-md-4 margin30">
                                <div class="contact-option-circle">
                                    <i class="fa fa-phone"></i>
                                    <p>( +8802 ) 9830760</p>
                                    <p>( +8802 ) 9830642</p>
                                </div>
                            </div>
                            <div class="col-md-4 margin30">
                                <div class="contact-option-circle">
                                    <i class="fa fa-envelope"></i>
                                    <p><a href="mailto:alookref@gmail.com">alookref@gmail.com</a>
                                    <p><a href="mailto:alook@citechco.net">alook@citechco.net</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <p class="margin30">
                            We are waiting to here from you!
                        </p>
                        <?php if ($success != ''): ?>
                            <div class="alert alert-success">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                <strong><?php echo $success; ?></strong>
                            </div>
                        <?php endif; ?>
                        <?php if ($error != ''): ?>
                            <div class="alert alert-danger">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                <strong><?php echo $error; ?></strong>
                            </div>
                        <?php endif; ?>
                        <div class="form-contact">
                            <form id="contactForm"  class="contact_form" method="POST" action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="row control-group">
                                            <div class="form-group col-xs-12 controls">
                                                <label>Name<span>*</span></label>
                                                <input type="text" class="form-control" id="contact_name" name="contact_name" value="<?php echo $contact_name; ?>" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="row control-group">
                                            <div class="form-group col-xs-12 controls">
                                                <label>Email Address<span>*</span></label>
                                                <input type="email" class="form-control" id="contact_email" name="contact_email" value="<?php echo $contact_email; ?>">
                                            </div>
                                        </div> 
                                    </div>
                                </div>
                                <div class="row control-group">
                                    <div class="form-group col-xs-12  controls">
                                        <label>Subject<span>*</span></label>
                                        <input type="text" class="form-control" id="contact_subject" name="contact_subject" value="<?php echo $contact_subject; ?>">
                                    </div>
                                </div>
                                <div class="row control-group">
                                    <div class="form-group col-xs-12 controls">
                                        <label>Message<span>*</span></label>
                                        <textarea rows="5" style="resize: vertical;overflow: auto;" class="form-control" name="contact_message" id="contact_message"><?php echo $contact_message; ?></textarea>
                                    </div>
                                </div>
                                <br>
                                <div class="form-group">
                                    <p id="errorShow" style="display: none;background-color: #ea2e49;color: white; padding: 4px 4px 2px 4px;font-size: 12px;position: relative;">
                                        Please fill up required (*) fields
                                    </p>
                                </div>                                
                                <div class="row">
                                    <div class="form-group col-xs-12">
                                        <button type="button" return="false" id="btnContact" name="btnContact" class="btn btn-primary" style="background: #367DAB;border: 2px solid #367DAB;color: white;font-weight: bold;">Send Message</button>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.245996252102!2d90.39661691545237!3d23.77425294378055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c765fbcdcb57%3A0xaa1da90adbf424b4!2sAlook+Refrigeration+Co.+Ltd.!5e0!3m2!1sen!2sbd!4v1463223221852" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>               
            </div>                       
            <?php include './footer.php'; ?>
        </div>
        <?php include './footer_script.php'; ?>
        <script>
            // email address validation
            function validateEmail(email) {
                var emailReg = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
                var valid = emailReg.test(email);
                if (!valid) {
                    return false;
                } else {
                    return true;
                }
            }
            $(document).ready(function () {
                $("#btnContact").click(function () {
                    var contact_name = $("#contact_name").val();
                    var contact_email = $("#contact_email").val();
                    var contact_subject = $("#contact_subject").val();
                    var contact_message = $("#contact_message").val();
                    var status = 0;
                    if (contact_name == '') {
                        status++;
                        $("#errorShow").show();
                        $("#contact_name").css({
                            "border": "1px solid red"
                        });
                    }
                    if (contact_email == '') {
                        status++;
                        $("#errorShow").show();
                        $("#contact_email").css({
                            "border": "1px solid red"
                        });
                    }
                    if (contact_email != "" && !validateEmail(contact_email)) {
                        status++;
                        $("#errorShow").show();
                        $("#contact_email").css({
                            "border": "1px solid red"
                        });
                    }


                    if (contact_subject == '') {
                        status++;
                        $("#errorShow").show();
                        $("#contact_subject").css({
                            "border": "1px solid red"
                        });
                    }
                    if (contact_message == '') {
                        status++;
                        $("#errorShow").show();
                        $("#contact_message").css({
                            "border": "1px solid red"
                        });
                    }
                    $('#contact_name').keyup(function () {
                        $("#contact_name").css({
                            "border": "1px solid #ddd"
                        });
                    });
                    $('#contact_email').keyup(function () {
                        $("#contact_email").css({
                            "border": "1px solid #ddd"
                        });
                    });
                    $('#contact_subject').keyup(function () {
                        $("#contact_subject").css({
                            "border": "1px solid #ddd"
                        });
                    });
                    $('#contact_message').keyup(function () {
                        $("#contact_message").css({
                            "border": "1px solid #ddd"
                        });
                    });

                    if (status == 0) {
                        $("#errorShow").hide();
                        $("#contactForm").submit();
                    }
                });
            });
        </script>
    </body>
</html>
