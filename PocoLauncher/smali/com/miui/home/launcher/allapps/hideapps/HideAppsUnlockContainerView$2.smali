.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$2;
.super Ljava/lang/Object;
.source "HideAppsUnlockContainerView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->onForgetPasswordBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 356
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->registerFingerprint()V

    return-void

    .line 361
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "booleanResult"

    .line 362
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 363
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "is_from_reset_password"

    const/4 v1, 0x1

    .line 364
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->Companion:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;->showHideAppsViewPlaceHolder(ILandroid/os/Bundle;)V

    .line 366
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$602(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;Z)Z

    .line 367
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->unregisterFingerprint()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->registerFingerprint()V

    :cond_1
    :goto_0
    return-void
.end method
