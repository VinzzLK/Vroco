.class Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->authenticateHideAppsLock(Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

.field final synthetic val$authenticationCallbackAppLock:Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper$1;->val$authenticationCallbackAppLock:Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    const/4 p2, 0x7

    if-eq p1, p2, :cond_1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 107
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper$1;->val$authenticationCallbackAppLock:Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;->onAuthenticationCanceled()V

    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper$1;->val$authenticationCallbackAppLock:Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;->onAuthenticationLockout()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper$1;->val$authenticationCallbackAppLock:Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 93
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper$1;->val$authenticationCallbackAppLock:Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;->onAuthenticationSucceeded()V

    return-void
.end method
