.class Lcom/miui/home/launcher/Launcher$51;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->autoChangeLockWallpaper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$forceRefresh:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    .line 5554
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-boolean p2, p0, Lcom/miui/home/launcher/Launcher$51;->val$forceRefresh:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    .line 5557
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$6402(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 5558
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 5560
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.miui.home.none_provider"

    .line 5561
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 5563
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher$51;->val$forceRefresh:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/miui/home/launcher/WallpaperUtils;->DEFAULT_LOCKWALLPAPER_PROVIDER:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5565
    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v3}, Lcom/miui/home/launcher/WallpaperUtils;->getLastRequestLockWallpaperTime(Landroid/content/Context;)J

    move-result-wide v3

    .line 5566
    iget-object v5, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v5}, Lcom/miui/home/launcher/WallpaperUtils;->getLockWallpaperUpdateMinute(Landroid/content/Context;)I

    move-result v5

    cmp-long v6, v1, v3

    if-ltz v6, :cond_1

    sub-long/2addr v1, v3

    const v3, 0xea60

    mul-int/2addr v5, v3

    int-to-long v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 5568
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 5571
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/WallpaperUtils;->setLastRequestLockWallpaperTime(Landroid/content/Context;J)Z

    .line 5572
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/launcher/utils/ContentProviderUtils;->isProviderExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5573
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 5575
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-boolean v2, p0, Lcom/miui/home/launcher/Launcher$51;->val$forceRefresh:Z

    const-string v3, "com.xiaomi.ad.LockScreenAdProvider"

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, p1, v4}, Lcom/miui/home/launcher/Launcher;->access$6500(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5576
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-boolean v1, p0, Lcom/miui/home/launcher/Launcher$51;->val$forceRefresh:Z

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$6600(Lcom/miui/home/launcher/Launcher;)Z

    move-result v2

    invoke-static {v0, p1, v1, p1, v2}, Lcom/miui/home/launcher/Launcher;->access$6500(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result p1

    .line 5577
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0, v4}, Lcom/miui/home/launcher/Launcher;->access$6602(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 5578
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 5580
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$6602(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 5581
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/WallpaperUtils;->setLastRequestLockWallpaperTime(Landroid/content/Context;J)Z

    .line 5582
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 5561
    :cond_4
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5554
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$51;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 5588
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$6402(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 5589
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5590
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/WallpaperUtils;->sendLockWallpaperBroadcast(Landroid/content/Context;Z)V

    goto :goto_0

    .line 5592
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$51;->this$0:Lcom/miui/home/launcher/Launcher;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/ThemeUtils;->tellThemeLockWallpaperPath(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 5554
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$51;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
