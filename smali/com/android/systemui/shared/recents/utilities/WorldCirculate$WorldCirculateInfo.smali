.class public Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;
.super Ljava/lang/Object;
.source "WorldCirculate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/utilities/WorldCirculate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorldCirculateInfo"
.end annotation


# instance fields
.field public mIsWorldCirculate:Z

.field public mWorldCirculateTargetDeviceName:Ljava/lang/String;

.field public mWorldCirculateTargetDevicePlatform:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mIsWorldCirculate:Z

    .line 158
    iput-object p2, p0, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mWorldCirculateTargetDevicePlatform:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mWorldCirculateTargetDeviceName:Ljava/lang/String;

    return-void
.end method
