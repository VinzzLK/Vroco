.class Lcom/miui/home/recents/BaseRecentsImpl$9;
.super Landroid/database/ContentObserver;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/BaseRecentsImpl;->registerScreeningModeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/os/Handler;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 557
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "cast_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 558
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 560
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "cast_mode_package"

    invoke-static {p1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 561
    invoke-static {p1, v0}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 563
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v1, v2}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1602(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z

    .line 564
    invoke-static {p1, v0, v2}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->updateApplicationLockedState(Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1602(Lcom/miui/home/recents/BaseRecentsImpl;Z)Z

    .line 568
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->setScreeningPkg(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    .line 570
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1600(Lcom/miui/home/recents/BaseRecentsImpl;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 571
    iget-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getScreenPkg()Ljava/lang/String;

    move-result-object p1

    .line 572
    invoke-static {p1, v0, v1}, Lcom/android/systemui/shared/recents/system/ProcessManagerWrapper;->updateApplicationLockedState(Ljava/lang/String;IZ)Z

    .line 574
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$9;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {p0}, Lcom/miui/home/recents/BaseRecentsImpl;->access$300(Lcom/miui/home/recents/BaseRecentsImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->setScreeningPkg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 577
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
