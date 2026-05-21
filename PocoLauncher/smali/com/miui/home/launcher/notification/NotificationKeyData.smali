.class public Lcom/miui/home/launcher/notification/NotificationKeyData;
.super Ljava/lang/Object;
.source "NotificationKeyData.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# instance fields
.field public count:I

.field public final notificationKey:Ljava/lang/String;

.field public final shortcutId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/miui/home/launcher/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/miui/home/launcher/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 47
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/notification/NotificationKeyData;->count:I

    return-void
.end method

.method public static fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/miui/home/launcher/notification/NotificationKeyData;
    .locals 3

    .line 51
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/miui/home/launcher/notification/NotificationKeyData;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/home/launcher/notification/NotificationKeyData;->getMessageCount(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    invoke-direct {v1, v2, v0, p0}, Lcom/miui/home/launcher/notification/NotificationKeyData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method

.method private static getMessageCount(Landroid/service/notification/StatusBarNotification;)I
    .locals 8

    .line 57
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "extraNotification"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    const/4 v0, 0x0

    new-array v7, v0, [Ljava/lang/Object;

    const-string v4, "getMessageCount"

    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->number:I

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 69
    instance-of v0, p1, Lcom/miui/home/launcher/notification/NotificationKeyData;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 73
    :cond_0
    check-cast p1, Lcom/miui/home/launcher/notification/NotificationKeyData;

    iget-object p1, p1, Lcom/miui/home/launcher/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
