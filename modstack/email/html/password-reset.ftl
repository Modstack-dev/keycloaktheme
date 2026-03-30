<#import "template.ftl" as layout>
<@layout.emailLayout>

  <h1 style="margin:0 0 8px;font-size:22px;font-weight:700;color:#1b1029;">Reset your password</h1>
  <p style="margin:0 0 24px;font-size:15px;color:#5a5168;line-height:1.5;">We received a request to reset the password for your ModStack account. Click the button below to choose a new password.</p>

  <!-- Button -->
  <table role="presentation" cellpadding="0" cellspacing="0" style="margin:0 0 24px;">
    <tr>
      <td align="center" style="background-color:#9660db;border-radius:8px;">
        <a href="${link}" target="_blank" style="display:inline-block;padding:14px 32px;font-size:15px;font-weight:600;color:#ffffff;text-decoration:none;">Reset password</a>
      </td>
    </tr>
  </table>

  <p style="margin:0 0 8px;font-size:12px;color:#8a7a9e;line-height:1.5;">If the button doesn't work, copy and paste this link into your browser:</p>
  <p style="margin:0 0 24px;font-size:11px;word-break:break-all;color:#a99bbd;line-height:1.5;background:#f9f8fb;border-radius:6px;padding:10px 12px;border:1px solid #eae6f0;"><a href="${link}" style="color:#a99bbd;text-decoration:none;">${link}</a></p>

  <hr style="border:none;border-top:1px solid #f0edf5;margin:24px 0;">

  <p style="margin:0 0 8px;font-size:13px;color:#8a7a9e;line-height:1.6;">This link will expire in ${linkExpiration} minutes.</p>
  <p style="margin:0;font-size:13px;color:#8a7a9e;line-height:1.6;">If you didn't request a password reset, you can safely ignore this email. Your password will not be changed.</p>

</@layout.emailLayout>
