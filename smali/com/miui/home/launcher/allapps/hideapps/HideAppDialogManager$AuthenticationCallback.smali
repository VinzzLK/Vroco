.class Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$AuthenticationCallback;
.super Ljava/lang/Object;
.source "HideAppDialogManager.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/hideapps/AuthenticationCallbackHideAppsLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthenticationCallback"
.end annotation


# instance fields
.field private weakViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$AuthenticationCallback;->weakViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$1;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$AuthenticationCallback;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onAuthenticationCanceled()V
    .locals 1

    .line 194
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$AuthenticationCallback;->weakViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    if-nez p0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->access$300(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 199
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->access$300(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->dismiss()V

    .line 200
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->access$400(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->cancelFingerprint()V

    const/4 p0, 0x0

    .line 201
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setFingerprintEnable(Z)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 172
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$AuthenticationCallback;->weakViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    if-nez p0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->access$300(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

    move-result-object v0

    const v1, 0x7f1001b3

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->setMessageText(I)V

    .line 177
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->access$300(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->show()V

    .line 178
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setVibrator(Landroid/content/Context;)V

    return-void
.end method

.method public onAuthenticationLockout()V
    .locals 1

    .line 183
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$AuthenticationCallback;->weakViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    if-nez p0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->access$300(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

    move-result-object p0

    const v0, 0x7f1001b1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->setMessageText(I)V

    .line 188
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->access$400(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->cancelFingerprint()V

    const/4 p0, 0x0

    .line 189
    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setFingerprintEnable(Z)V

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 2

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager$AuthenticationCallback;->weakViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 157
    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->setFingerprintEnable(Z)V

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 158
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 161
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->access$300(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 162
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->access$300(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintConfirmDialog;->dismiss()V

    .line 163
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->access$400(Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;)Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/FingerprintHelper;->cancelFingerprint()V

    .line 165
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsLockUtils;->hasHideAppsUnlockPassWord()Z

    move-result p0

    if-nez p0, :cond_1

    .line 166
    sget-object p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->Companion:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;->showHideAppsViewPlaceHolder(I)V

    :cond_1
    return-void
.end method
