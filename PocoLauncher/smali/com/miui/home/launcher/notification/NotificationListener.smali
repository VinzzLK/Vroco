.class public Lcom/miui/home/launcher/notification/NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationListener.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;
    }
.end annotation


# static fields
.field private static sIsConnected:Z

.field private static sNotificationListenerInstance:Lcom/miui/home/launcher/notification/NotificationListener;

.field private static sNotificationsChangedListener:Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;

.field private static final spacialNotificationArray:[Ljava/lang/String;


# instance fields
.field private mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field private mUiCallback:Landroid/os/Handler$Callback;

.field private final mUiHandler:Landroid/os/Handler;

.field private mWorkerCallback:Landroid/os/Handler$Callback;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "com.miui.securitycenter"

    const-string v1, "com.miui.notes"

    const-string v2, "com.miui.screenrecorder"

    const-string v3, "com.android.soundrecorder"

    const-string v4, "com.miui.gallery"

    .line 60
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/notification/NotificationListener;->spacialNotificationArray:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/miui/home/launcher/notification/NotificationListener;->sNotificationListenerInstance:Lcom/miui/home/launcher/notification/NotificationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 77
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 74
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 88
    new-instance v0, Lcom/miui/home/launcher/notification/NotificationListener$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/notification/NotificationListener$1;-><init>(Lcom/miui/home/launcher/notification/NotificationListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mWorkerCallback:Landroid/os/Handler$Callback;

    .line 119
    new-instance v0, Lcom/miui/home/launcher/notification/NotificationListener$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/notification/NotificationListener$2;-><init>(Lcom/miui/home/launcher/notification/NotificationListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mUiCallback:Landroid/os/Handler$Callback;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/miui/home/launcher/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mWorkerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mUiCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mUiHandler:Landroid/os/Handler;

    .line 80
    sput-object p0, Lcom/miui/home/launcher/notification/NotificationListener;->sNotificationListenerInstance:Lcom/miui/home/launcher/notification/NotificationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/notification/NotificationListener;Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/notification/NotificationListener;->shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/service/notification/StatusBarNotification;)Landroidx/core/util/Pair;
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/miui/home/launcher/notification/NotificationListener;->toKeyPair(Landroid/service/notification/StatusBarNotification;)Landroidx/core/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/notification/NotificationListener;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/notification/NotificationListener;[Landroid/service/notification/StatusBarNotification;)Ljava/util/List;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/notification/NotificationListener;->filterNotifications([Landroid/service/notification/StatusBarNotification;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;
    .locals 1

    .line 54
    sget-object v0, Lcom/miui/home/launcher/notification/NotificationListener;->sNotificationsChangedListener:Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;

    return-object v0
.end method

.method private filterNotifications([Landroid/service/notification/StatusBarNotification;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 233
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 234
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 235
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/notification/NotificationListener;->shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    array-length v2, p1

    .line 240
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 243
    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method private isSpacialNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 305
    sget-object p0, Lcom/miui/home/launcher/notification/NotificationListener;->spacialNotificationArray:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 306
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onNotificationFullRefresh()V
    .locals 1

    .line 193
    iget-object p0, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static removeNotificationsChangedListener()V
    .locals 1

    const/4 v0, 0x0

    .line 181
    sput-object v0, Lcom/miui/home/launcher/notification/NotificationListener;->sNotificationsChangedListener:Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;

    return-void
.end method

.method public static setNotificationsChangedListener(Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;)V
    .locals 0

    .line 172
    sput-object p0, Lcom/miui/home/launcher/notification/NotificationListener;->sNotificationsChangedListener:Lcom/miui/home/launcher/notification/NotificationListener$NotificationsChangedListener;

    .line 174
    sget-object p0, Lcom/miui/home/launcher/notification/NotificationListener;->sNotificationListenerInstance:Lcom/miui/home/launcher/notification/NotificationListener;

    if-eqz p0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/miui/home/launcher/notification/NotificationListener;->onNotificationFullRefresh()V

    :cond_0
    return-void
.end method

.method private shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 271
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 275
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, v2, v3}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 276
    iget-object v0, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->canShowBadge()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 280
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/notification/NotificationListener;->shouldBeFilteredOutSpacial(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 284
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 285
    iget-object v0, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miscellaneous"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 287
    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    return v1

    .line 291
    :cond_3
    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 p0, p0, 0x200

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    move p0, v1

    goto :goto_0

    :cond_4
    move p0, v0

    .line 292
    :goto_0
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 293
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.text"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 294
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v1

    goto :goto_1

    :cond_5
    move p1, v0

    :goto_1
    if-nez p0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v0

    :cond_7
    :goto_2
    return v1
.end method

.method private shouldBeFilteredOutSpacial(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 299
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/notification/NotificationListener;->isSpacialNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    .line 300
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->flags:I

    const/16 v0, 0x40

    and-int/2addr p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private static toKeyPair(Landroid/service/notification/StatusBarNotification;)Landroidx/core/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Landroidx/core/util/Pair<",
            "Lcom/miui/home/launcher/notification/PackageUserKey;",
            "Lcom/miui/home/launcher/notification/NotificationKeyData;",
            ">;"
        }
    .end annotation

    .line 313
    invoke-static {p0}, Lcom/miui/home/launcher/notification/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/miui/home/launcher/notification/PackageUserKey;

    move-result-object v0

    .line 314
    invoke-static {p0}, Lcom/miui/home/launcher/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/miui/home/launcher/notification/NotificationKeyData;

    move-result-object p0

    .line 313
    invoke-static {v0, p0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 2

    .line 252
    :try_start_0
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LittleWhip"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 1

    .line 262
    :try_start_0
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "msg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LittleWhip"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onListenerConnected()V
    .locals 2

    .line 186
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    const/4 v0, 0x1

    .line 187
    sput-boolean v0, Lcom/miui/home/launcher/notification/NotificationListener;->sIsConnected:Z

    const-string v0, "NotificationListener"

    const-string v1, " notification connected"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/miui/home/launcher/notification/NotificationListener;->onNotificationFullRefresh()V

    return-void
.end method

.method public onListenerDisconnected()V
    .locals 2

    const-string v0, "NotificationListener"

    const-string v1, " notification disconnected"

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    const/4 p0, 0x0

    .line 200
    sput-boolean p0, Lcom/miui/home/launcher/notification/NotificationListener;->sIsConnected:Z

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 205
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    if-eqz p1, :cond_0

    .line 207
    iget-object p0, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 214
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    if-eqz p1, :cond_0

    .line 216
    new-instance v0, Landroidx/core/util/Pair;

    .line 217
    invoke-static {p1}, Lcom/miui/home/launcher/notification/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/miui/home/launcher/notification/PackageUserKey;

    move-result-object v1

    .line 218
    invoke-static {p1}, Lcom/miui/home/launcher/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/miui/home/launcher/notification/NotificationKeyData;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    iget-object p0, p0, Lcom/miui/home/launcher/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public registerAsSystemService(Landroid/content/Context;)V
    .locals 9

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/Boolean;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-class v2, Landroid/content/ComponentName;

    const/4 v6, 0x1

    aput-object v2, v4, v6

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v2, v4, v7

    new-array v8, v1, [Ljava/lang/Object;

    .line 162
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    aput-object v1, v8, v5

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/miui/home/launcher/notification/NotificationListener;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v8, v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v7

    const-string v2, "registerAsSystemService"

    move-object v1, p0

    move-object v5, v8

    .line 159
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public unRegisterAsSystemService(Landroid/content/Context;)V
    .locals 9

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/Boolean;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-class v2, Landroid/content/ComponentName;

    const/4 v6, 0x1

    aput-object v2, v4, v6

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v2, v4, v7

    new-array v8, v1, [Ljava/lang/Object;

    .line 154
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    aput-object v1, v8, v5

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/miui/home/launcher/notification/NotificationListener;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v8, v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v7

    const-string/jumbo v2, "unRegisterAsSystemService"

    move-object v1, p0

    move-object v5, v8

    .line 151
    invoke-static/range {v0 .. v5}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method
