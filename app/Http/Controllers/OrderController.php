<?php

namespace App\Http\Controllers;
//namespace PHPMailer\src;
// Import PHPMailer classes into the global namespace
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;





use Illuminate\Http\Request;
use App\Client;
use App\Order;
use App\Orderdetail;
use App\Product;
class OrderController extends Controller
{

    //store in database from forn
    public function store(Request $request)
    {
        $cartItem = \Cart::session(auth()->id())->getContent();
        $quentitiCount = \Cart::session(auth()->id())->getTotalQuantity();


        // government auth_id
        if($quentitiCount > 0){
            $request->validate([
                "first_name"=>"required | min:3",
                "last_name"=>"required | min:3",
                "country_id"=>"required",
                "phone"=>"required",
                "email"=>"required",
                "street_address"=>"required",
                "city"=>"required",
                "government"=>"required",

            ]);
            $country_id=(explode(" ",$request->country_id)[0]);
            $shipPrice=(explode(" ",$request->country_id)[1]);
        //add to client who needing the order
            $client=new Client();
            $client->first_name=$request->first_name;
            $client->last_name=$request->last_name;
            $client->country_id=$country_id;
            $client->phone=$request->phone;
            $client->email=$request->email;
            $client->street_address=$request->street_address;
            $client->city=$request->city;
            $client->government=$request->government;
            $client->note=$request->note;
            $client->auth_id=auth()->user()->id;
            $client->save();
        //end the client order to store

        //add the Order to database
            $order=new Order();
            $order->client_id = $client->id;
            $order->status = 0;
            $order->shipPrice=$shipPrice;
            $order->save();
        //end add the order to database

        foreach($cartItem as $item)
        {
            $orderdetail=new Orderdetail();
            $orderdetail->order_id=$order->id;
            $orderdetail->product_id=$item->id;
            $orderdetail->price=$item->price;
            $orderdetail->quentity=$item->quantity;
            $orderdetail->save();
        }
        // Send Email



// Create an instance; Pass `true` to enable exceptions
$mail = new PHPMailer;

// Server settings
//$mail->SMTPDebug = SMTP::DEBUG_SERVER;    //Enable verbose debug output
$mail->isSMTP();                            // Set mailer to use SMTP
$mail->Host = 'mail.interpharmaegycare.com';           // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                     // Enable SMTP authentication
$mail->Username = 'developer@interpharmaegycare.com';       // SMTP username
$mail->Password = 'v?nzI3aBvi55';         // SMTP password
$mail->SMTPSecure = 'ssl';                  // Enable TLS encryption, `ssl` also accepted
$mail->Port = 465;                          // TCP port to connect to

// Sender info
$mail->setFrom('developer@interpharmaegycare.com', 'Inter Pharma Egy Care');
$mail->addReplyTo('info@interpharmaegycare.com', 'Inter Pharma Egy Care');

// Add a recipient
$mail->addAddress($request->email);

$mail->addCC('info@interpharmaegycare.com');
$mail->addBCC('ibrahim.helmy.udacity@gmail.com');

// Set email format to HTML
$mail->isHTML(true);

// Mail subject
$mail->Subject = ' Client :'.$request->first_name .' '. $request->last_name. ' Phone : '. $request->phone .' With Order # :'.$order->id;
//$subjectStr = '<h3> Dear  '.$request->first_name .' '. $request->last_name .'</h3>
$subjectStr = '<h4>Dear Beloved ❤️ '.$request->first_name .' '. $request->last_name.'</h4>
<h4>Thanks for choosing our brands of Interpharma Egycare, Enjoy your choice.</h4>
<h4>Regarding your order, please note that,</h4>
<h4><b style="color:green;">Your order is confirmed </b>  </h4> <h5> Your Order Details are :  </h5> <ul>';
$totalPrice = 0;
foreach($cartItem as $item)
{
    $product =Product::find($item->id);
    $subjectStr.='<li> <b>Item Name :</b> '.$product->ar_name.'<b> Item Price :</b>   '.$item->price .' L.E <b> Qunatity :</b> '. $item->quantity.'</li>';
  $totalPrice += $item->quantity *  $item->price;
}

$totalPrice +=$shipPrice;

$subjectStr .='</ul><br/><b>Ship Price: </b> '.$shipPrice.' <br/>';
 $subjectStr .='<br/> <b>Total Fees = </b> '. $totalPrice ." L.E <br/><br/>" ;
 $subjectStr .="<p>Payment terms: Cash on delivery 🚚.</p>
 <p>
 Waiting for your valuabl review, because your opinion is very important for us.
 </p> <p>
Thanks and regards </p><br/><hr>";
 //$subjectStr .='<b>Paiement when recieving.</b> <br/><hr>';
 $subjectStr .="<img src='http://interpharmaegycare.com/images/Logo-01.png'  /><br/>";
 $subjectStr .="© 2022 InterPharmaEgyCare LLC All rights reserved.";



// Mail body content
//$bodyContent = '<h1>How to Send Email from Localhost using PHP by CodexWorld</h1>';
//$bodyContent .= '<p>This HTML email is sent from the localhost server using PHP by <b>CodexWorld</b></p>';
$mail->Body    = $subjectStr;

// Send email
if(!$mail->send()) {
    echo 'Message could not be sent. Mailer Error: '.$mail->ErrorInfo;
} else {
    echo 'Message has been sent.';
}

        //


        session()->flash("success",__("words.add_order_success"));
    }else
    {
        session()->flash("error",__("words.add_bad"));
    }
        \Cart::session(auth()->id())->clear();
        return redirect()->back();
    }

  //end store in database from front

  public function index(Request $request)
  {
    return view('vender.voyager.orders.index')->with(['orders'=>Order::latest()->paginate(3)]);
  }

  public function cl_order($cl_id){

    $orders=Order::where('client_id',$cl_id)->latest()->paginate(3);
    return view('vender.voyager.orders.index' ,compact('orders'));
  }
    public function deleteOrder($id)
    {
        $orders=Order::find($id);

            foreach($orders->orderdetails as $orderd)
            {
                $orderd->delete();
            }
            $orders->delete();
        session()->flash('success',__("words.delete_order_success"));
       return redirect()->back();
    }
    public function orderFilter(Request $request)
    {

        if ($request->start_date > $request->end_date) {
            $swap = $request->end_date;
            $request->end_date = $request->start_date;
            $request->start_date = $swap;
        }

        if (isset($request->start_date)) {
            $start_date   = date('Y-m-d h:i:s ', strtotime($request->start_date));
        } else {
            $start_date   = date('Y-m-01 h:i:s G', time());
        }

        if (isset($request->end_date)) {
            // $end_date   = date('Y-m-d h:i:s ', (strtotime($request->end_date) + 24 * 60 * 60));
            $end_date   = date('Y-m-d', strtotime($request->end_date)) . ' 23:59:59';
        } else {
            // $end_date = date('Y-m-d h:i:s ', time() + 10*60*60 );
            $end_date = date('Y-m-t', time()) ;
        }
        $status='';
        if($request->status==null)
        {
            $status=0;
        }else{
            $status=$request->status;
        }

        $orders=Order::where('created_at', '>=', $start_date)->where('created_at', '<', $end_date)->where('status',$status)->paginate(3);

        return view('vender.voyager.orders.index' ,compact('orders'));

    }

    public function updateOrders($id)
    {
        $order=Order::find($id);
        if($order)
        {
            return view('vender.voyager.orders.update',compact('order'));
        }else{
            session()->flash('success',"not found");
            return redirect()->back();
        }
    }

    public function editOrders(Request $request)
    {
        $order=Order::find($request->id);
        $order->status=$request->status;
        $order->save();
        session()->flash('success',__('words.update_success'));
        $orders=Order::latest()->paginate(3);
        return view('vender.voyager.orders.index',compact('orders'));
    }
}
