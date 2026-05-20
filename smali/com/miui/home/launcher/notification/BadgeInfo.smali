.class public Lcom/miui/home/launcher/notification/BadgeInfo;
.super Ljava/lang/Object;
.source "BadgeInfo.java"


# instance fields
.field private mNotificationKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/notification/NotificationKeyData;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageUserKey:Lcom/miui/home/launcher/notification/PackageUserKey;

.field private mTotalCount:I


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/notification/PackageUserKey;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mPackageUserKey:Lcom/miui/home/launcher/notification/PackageUserKey;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addOrUpdateNotificationKey(Lcom/miui/home/launcher/notification/NotificationKeyData;)Z
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/notification/NotificationKeyData;

    :goto_0
    if-eqz v0, :cond_2

    .line 66
    iget v1, v0, Lcom/miui/home/launcher/notification/NotificationKeyData;->count:I

    iget p1, p1, Lcom/miui/home/launcher/notification/NotificationKeyData;->count:I

    if-ne v1, p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 70
    :cond_1
    iget v2, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mTotalCount:I

    sub-int/2addr v2, v1

    add-int/2addr v2, p1

    .line 71
    iput v2, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mTotalCount:I

    .line 72
    iput p1, v0, Lcom/miui/home/launcher/notification/NotificationKeyData;->count:I

    const/4 p0, 0x1

    return p0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget v1, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mTotalCount:I

    iget p1, p1, Lcom/miui/home/launcher/notification/NotificationKeyData;->count:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mTotalCount:I

    :cond_3
    return v0
.end method

.method public getNotificationCount()I
    .locals 1

    .line 98
    iget p0, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mTotalCount:I

    const/16 v0, 0x3e7

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getNotificationKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/notification/NotificationKeyData;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    return-object p0
.end method

.method public removeNotificationKey(Lcom/miui/home/launcher/notification/NotificationKeyData;)Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget v1, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mTotalCount:I

    iget p1, p1, Lcom/miui/home/launcher/notification/NotificationKeyData;->count:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mTotalCount:I

    :cond_0
    return v0
.end method

.method public shouldBeInvalidated(Lcom/miui/home/launcher/notification/BadgeInfo;)Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/notification/BadgeInfo;->mPackageUserKey:Lcom/miui/home/launcher/notification/PackageUserKey;

    iget-object v1, p1, Lcom/miui/home/launcher/notification/BadgeInfo;->mPackageUserKey:Lcom/miui/home/launcher/notification/PackageUserKey;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/notification/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/launcher/notification/BadgeInfo;->getNotificationCount()I

    move-result p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/notification/BadgeInfo;->getNotificationCount()I

    move-result p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
