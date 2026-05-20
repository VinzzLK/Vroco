.class Lcom/miui/home/recents/BaseRecentsImpl$16;
.super Landroid/content/BroadcastReceiver;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method public static synthetic $r8$lambda$sUh-aFGzSsUSsYx9vOKHI_GzX8Q(Lcom/miui/home/recents/BaseRecentsImpl$16;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/BaseRecentsImpl$16;->lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$16;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    .line 931
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 932
    invoke-static {p2}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/recents/RecentsModel;->clearRecentsTaskLoadPlan()V

    .line 933
    iget-object p2, p0, Lcom/miui/home/recents/BaseRecentsImpl$16;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p2}, Lcom/miui/home/recents/BaseRecentsImpl;->access$2200(Lcom/miui/home/recents/BaseRecentsImpl;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, -0x1

    const-string v0, "android.intent.extra.user_handle"

    .line 936
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 937
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result p2

    .line 938
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$16;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    if-eq p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1202(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z

    .line 940
    invoke-static {}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->getInstance()Lcom/miui/home/recents/SpecialFDeviceGestureHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/SpecialFDeviceGestureHelper;->isInSFDeviceFoldedMode()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 943
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$16;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1200(Lcom/miui/home/recents/BaseRecentsImpl;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 944
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$16;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 948
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$16;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$000(Lcom/miui/home/recents/BaseRecentsImpl;)Lcom/miui/home/recents/NavStubView;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "RecentsImpl"

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navstubview will be added: mReceiver Intent.ACTION_USER_SWITCHED userid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$16;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1400(Lcom/miui/home/recents/BaseRecentsImpl;)V

    .line 952
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$16;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1500(Lcom/miui/home/recents/BaseRecentsImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 954
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 959
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$16;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$700(Lcom/miui/home/recents/BaseRecentsImpl;)V

    .line 960
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$16;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$800(Lcom/miui/home/recents/BaseRecentsImpl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 962
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 965
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 966
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$16;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-virtual {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->adaptToTopActivity()V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$16;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget-object v0, v0, Lcom/miui/home/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/home/recents/BaseRecentsImpl$16$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/home/recents/BaseRecentsImpl$16$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/BaseRecentsImpl$16;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
