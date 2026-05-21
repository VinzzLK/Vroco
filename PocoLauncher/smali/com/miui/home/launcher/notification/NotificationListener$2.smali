.class Lcom/miui/home/launcher/notification/NotificationListener$2;
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

    .line 119
    iput-object p1, p0, Lcom/miui/home/launcher/notification/NotificationListener$2;->this$0:Lcom/miui/home/launcher/notification/NotificationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 122
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/notification/NotificationListener;->access$400()Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 139
    invoke-static {}, Lcom/miui/home/launcher/notification/NotificationListener;->access$400()Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;->onNotificationFullRefresh(Ljava/util/List;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/notification/NotificationListener;->access$400()Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 132
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroidx/core/util/Pair;

    .line 134
    invoke-static {}, Lcom/miui/home/launcher/notification/NotificationListener;->access$400()Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;

    move-result-object p1

    iget-object v1, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/launcher/notification/PackageUserKey;

    iget-object p0, p0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/launcher/notification/NotificationKeyData;

    invoke-interface {p1, v1, p0}, Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;->onNotificationRemoved(Lcom/miui/home/launcher/notification/PackageUserKey;Lcom/miui/home/launcher/notification/NotificationKeyData;)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/notification/NotificationListener;->access$400()Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 125
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroidx/core/util/Pair;

    .line 126
    invoke-static {}, Lcom/miui/home/launcher/notification/NotificationListener;->access$400()Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;

    move-result-object p1

    iget-object v1, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/launcher/notification/PackageUserKey;

    iget-object p0, p0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/launcher/notification/NotificationKeyData;

    invoke-interface {p1, v1, p0}, Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;->onNotificationPosted(Lcom/miui/home/launcher/notification/PackageUserKey;Lcom/miui/home/launcher/notification/NotificationKeyData;)V

    :cond_3
    :goto_0
    return v0
.end method
