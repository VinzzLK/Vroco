.class Lcom/miui/home/recents/BaseRecentsImpl$11;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Lcom/miui/home/recents/ActivityObserverLauncher$ActivityObserverCallback;


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
.method constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$11;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activityResumed(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "RecentsImpl"

    if-eqz p1, :cond_2

    .line 728
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$11;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v1, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->access$1700(Lcom/miui/home/recents/BaseRecentsImpl;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "activityResumed, another display, return"

    .line 733
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 736
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mActivityStateObserver "

    .line 737
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$11;->this$0:Lcom/miui/home/recents/BaseRecentsImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->onResumed(Ljava/lang/String;Z)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "activityResumed, intent null, return"

    .line 729
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
