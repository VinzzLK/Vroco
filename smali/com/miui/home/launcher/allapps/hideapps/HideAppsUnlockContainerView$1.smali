.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$1;
.super Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;
.source "HideAppsUnlockContainerView.java"


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
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;Landroid/os/Handler;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/hideapps/OnDefaultSharedPreferenceChangeListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 1

    .line 293
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$300(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    sget-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;->NeedToUnlock:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$Stage;)V

    .line 295
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$400(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$500(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    .line 296
    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->access$500(Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->isInUnlockPage()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 297
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->registerFingerprint()V

    :cond_1
    return-void
.end method
