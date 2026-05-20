.class public final Lcom/miui/home/safemode/SafeModeManager$mCheckUpdateTask$1;
.super Ljava/lang/Object;
.source "SafeModeManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/safemode/SafeModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 260
    sget-object v0, Lcom/miui/home/safemode/AppVersionUpdateListener;->INSTANCE:Lcom/miui/home/safemode/AppVersionUpdateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/safemode/AppVersionUpdateListener;->setTriggerByUser(Z)V

    .line 261
    invoke-static {}, Lcom/miui/home/safemode/SafeModeManager;->access$getMContext$p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/safemode/SafeModeUtil;->tryCheckUpdate(Landroid/content/Context;)V

    .line 262
    invoke-static {}, Lcom/miui/home/safemode/SafeModeManager;->access$getMHandler$p()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/miui/home/safemode/SafeModeManager;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager;

    invoke-static {v1}, Lcom/miui/home/safemode/SafeModeManager;->access$getCheckInterval(Lcom/miui/home/safemode/SafeModeManager;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
