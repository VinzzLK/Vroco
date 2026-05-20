.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$3;
.super Ljava/lang/Object;
.source "HideAppsUnlockContainerView.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$3;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetectedPassword(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPatternDrawEnd()V
    .locals 1

    .line 412
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$3;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$702(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;Z)Z

    return-void
.end method

.method public onPatternDrawStart()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$3;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$700(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$3;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$702(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;Z)Z

    :cond_0
    return-void
.end method

.method public passwordInProgress(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 1

    .line 384
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$3;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->NeedToUnlockWrongByPattern:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;)V

    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$3;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->unregisterFingerprint()V

    .line 390
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$3;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)V

    return-void
.end method
