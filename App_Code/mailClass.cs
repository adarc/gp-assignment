using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


using System.Net.Mail;
using System.Net;
using System.Text;
using System.IO;


/// <summary>
/// Summary description for mailClass
/// </summary>
public class mailClass
{
    //public mailClass()
    //{
    //    //
    //    // TODO: Add constructor logic here
    //    //
    //}

    public void sendmail(string message, string reciever, string sub)
    {
       
            string userName = "adrcjaipur@gmail.com"; //insert the usernme for the mail account
            string passWord = "India@098"; //insert corrosponding password
            string fromText = "DoNotReply@domain.com"; //Whatever to identify the Sender

            string toText = reciever;
            string subjectText = sub;
            string bodyText = message;

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.EnableSsl = true;
            smtpClient.Timeout = 30000;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new NetworkCredential(userName, passWord);
            MailMessage mail = new MailMessage(fromText, toText, subjectText, bodyText);
            mail.BodyEncoding = UTF8Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
            smtpClient.Send(mail);

            //msg.sendmsg("Admin", reciever, sub, message.Replace("'", "''"), "Inbox", "Bold");


        
    }

    public void sendBcc(string message, string reciever, string sub)
    {
        

            string userName = "adrcjaipur@gmail.com"; //insert the usernme for the mail account
            string passWord = "India@487"; //insert corrosponding password
            string fromText = "DoNotReply@domain.com"; //Whatever to identify the Sender

            string toText = reciever;
            string subjectText = sub;
            string bodyText = message;

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.EnableSsl = true;
            smtpClient.Timeout = 30000;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new NetworkCredential(userName, passWord);
            MailMessage mail = new MailMessage(fromText, toText, subjectText, bodyText);
            mail.BodyEncoding = UTF8Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
            smtpClient.Send(mail);

            //msg.sendmsg("Admin", reciever, sub, message.Replace("'", "''"), "Inbox", "Bold");


       
    }

}