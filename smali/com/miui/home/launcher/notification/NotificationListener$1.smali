.class Lcom/miui/home/launcher/notification/NotificationListener$1;
.super Ljava/lang/Object;
.source "NotificationListener.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/notification/NotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/notification/NotificationListener;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/notification/NotificationListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/miui/home/launcher/notification/NotificationListener$1;->this$0:Lcom/miui/home/launcher/notification/NotificationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 101
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/notification/NotificationListener$1;->this$0:Lcom/miui/home/launcher/notification/NotificationListener;

    invoke-virtual {v1}, Lcom/miui/home/launcher/notification/NotificationListener;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/home/launcher/notification/NotificationListener;->access$300(Lcom/miui/home/launcher/notification/NotificationListener;[Landroid/service/notification/StatusBarNotification;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 104
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "NotificationListener"

    const-string v3, "SecurityException: failed to fetch notifications"

    .line 108
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/notification/NotificationListener$1;->this$0:Lcom/miui/home/launcher/notification/NotificationListener;

    invoke-static {p0}, Lcom/miui/home/launcher/notification/NotificationListener;->access$200(Lcom/miui/home/launcher/notification/NotificationListener;)Landroid/os/Handler;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 98
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/notification/NotificationListener$1;->this$0:Lcom/miui/home/launcher/notification/NotificationListener;

    invoke-static {p0}, Lcom/miui/home/launcher/notification/NotificationListener;->access$200(Lcom/miui/home/launcher/notification/NotificationListener;)Landroid/os/Handler;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 93
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/notification/NotificationListener$1;->this$0:Lcom/miui/home/launcher/notification/NotificationListener;

    invoke-static {v0}, Lcom/miui/home/launcher/notification/NotificationListener;->access$200(Lcom/miui/home/launcher/notification/NotificationListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/notification/NotificationListener$1;->this$0:Lcom/miui/home/launcher/notification/NotificationListener;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/notification/NotificationListener;->access$000(Lcom/miui/home/launcher/notification/NotificationListener;Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 95
    :goto_1
    invoke-static {p1}, Lcom/miui/home/launcher/notification/NotificationListener;->access$100(Landroid/service/notification/StatusBarNotification;)Landroidx/core/util/Pair;

    move-result-object p0

    .line 94
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_2
    return v2
.end method
