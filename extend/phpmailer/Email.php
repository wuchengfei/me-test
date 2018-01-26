<?php 
/**
 * 发送邮件类库
 */
namespace phpmailer;
use phpmailer\Phpmailer;
use think\Exception;
class Email{
	/**
	 * 发送邮件
	 * @Author   Wade
	 * @DateTime 2018-01-26
	 * @param $to      			收件人
	 * @param $title  			邮件标题
	 * @param $content 			邮件内容
	 * @param $AddAttachment 	附件地址(根目录为public)
	 * @return   bool
	 */
	public static function send($to,$title,$content,$AddAttachment){
		date_default_timezone_set('PRC');//设置时间
		try {
			$mail = new Phpmailer(); 
			$mail->IsSMTP();
			$mail->CharSet    = config('email.CharSet'); //设置邮件的字符编码，这很重要，不然中文乱码
			$mail->SMTPAuth   = config('email.SMTPAuth'); //开启认证
			$mail->SMTPSecure = config('email.SMTPSecure');// 使用ssl协议方式
			$mail->Port       = config('email.Port');                    
			$mail->Host       = config('email.Host'); 
			$mail->Username   = config('email.Username');    
			$mail->Password   = config('email.Password');            
			//$mail->IsSendmail(); //如果没有sendmail组件就注释掉，否则出现“Could  not execute: /var/qmail/bin/sendmail ”的错误提示
			$mail->AddReplyTo(config('email.AddReplyTo_address'),config('email.AddReplyTo_name'));//回复地址
			$mail->From       = config('email.From');
			$mail->FromName   = config('email.FromName');
			$to = $to;
			$mail->AddAddress($to);
			$mail->Subject  = $title;
			$mail->Body = $content;
			$mail->AltBody    = config('email.AltBody'); //当邮件不支持html时备用显示，可以省略
			$mail->WordWrap   = config('email.WordWrap'); // 设置每行字符串的长度
			if (config('email.AddAttachment')) {
				$mail->AddAttachment($_SERVER['DOCUMENT_ROOT'].$AddAttachment);  //附件地址
			}
			$mail->IsHTML(true); 
			if(!$mail->send()){// 发送邮件
                return "Mailer Error: ".$mail->ErrorInfo;// 输出错误信息
            }else{
                // echo '发送成功';
                return true;
            }
		} catch (phpmailerException $e) {
			echo "邮件发送失败：".$e->errorMessage();
		}
	}
}