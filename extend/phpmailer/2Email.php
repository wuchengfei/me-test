<?php

/**
 * @Author: Marte
 * @Date:   2017-12-11 22:18:18
 * @Last Modified by:   Marte
 * @Last Modified time: 2017-12-11 22:40:07
 */
namespace phpmailer;
use phpmailer\Phpmailer;
use think\Exception;
/**
 * 发送邮件类库
 */
class Email {

    /**
     * 发送邮件方法
     * @param  str $address 发送邮件的地址
     * @param  str $title   邮件标题
     * @param  str $body    邮件内容
     * @return bool          true 代表成功 否则 报错
     */
    public static function send($address,$title,$body){

        try{
            $toemail = $address;//定义收件人的邮箱

            $mail = new Phpmailer();

            $mail->isSMTP();// 使用SMTP服务
            $mail->CharSet = "utf8";// 编码格式为utf8，不设置编码的话，中文会出现乱码
            $mail->Host = "smtp.qq.com";// 发送方的SMTP服务器地址
            $mail->SMTPAuth = true;// 是否使用身份验证
            $mail->Username = "1693495649@qq.com";// 发送方的163邮箱用户名，就是你申请163的SMTP服务使用的163邮箱
            $mail->Password = "gtkpzcvdvofqcfjd";// 发送方的邮箱密码，注意用163邮箱这里填写的是“客户端授权密码”而不是邮箱的登录密码！
            $mail->SMTPSecure = "ssl";// 使用ssl协议方式
            $mail->Port = 465;// 163邮箱的ssl协议方式端口号是465/994

            $mail->setFrom("1693495649@qq.com","赵大人");// 设置发件人信息，如邮件格式说明中的发件人，这里会显示为Mailer(xxxx@163.com），Mailer是当做名字显示
            $mail->addAddress($toemail,'赵大人');// 设置收件人信息，如邮件格式说明中的收件人，这里会显示为Liang(yyyy@163.com)
            $mail->addReplyTo("1693495649@qq.com","Reply");// 设置回复人信息，指的是收件人收到邮件后，如果要回复，回复邮件将发送到的邮箱地址
            //$mail->addCC("xxx@163.com");// 设置邮件抄送人，可以只写地址，上述的设置也可以只写地址(这个人也能收到邮件)
            //$mail->addBCC("xxx@163.com");// 设置秘密抄送人(这个人也能收到邮件)
            //$mail->addAttachment("bug0.jpg");// 添加附件


            $mail->Subject = $title;// 邮件标题
            $mail->Body = $body;// 邮件正文
            //$mail->AltBody = "This is the plain text纯文本";// 这个是设置纯文本方式显示的正文内容，如果不支持Html方式，就会用到这个，基本无用

            if(!$mail->send()){// 发送邮件
                // echo "Message could not be sent.";
                // echo "Mailer Error: ".$mail->ErrorInfo;// 输出错误信息
                return "Mailer Error: ".$mail->ErrorInfo;// 输出错误信息
            }else{
                // echo '发送成功';
                return true;
            }
        }catch(phpmailerException $e){
            return false;
        }

    }
}