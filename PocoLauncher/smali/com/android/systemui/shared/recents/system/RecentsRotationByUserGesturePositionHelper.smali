.class public Lcom/android/systemui/shared/recents/system/RecentsRotationByUserGesturePositionHelper;
.super Ljava/lang/Object;
.source "RecentsRotationByUserGesturePositionHelper.java"


# static fields
.field private static final RECENTS_ORIENTATION_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RecentsRotationByUserGesturePositionHelper"

.field private static mRecentsOrientationByGesturePosition:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearRecentsOrientationByGesturePosition()V
    .locals 1

    const/4 v0, -0x1

    .line 16
    sput v0, Lcom/android/systemui/shared/recents/system/RecentsRotationByUserGesturePositionHelper;->mRecentsOrientationByGesturePosition:I

    return-void
.end method

.method public static updateRecentsOrientationByGesturePosition(I)V
    .locals 0

    .line 12
    sput p0, Lcom/android/systemui/shared/recents/system/RecentsRotationByUserGesturePositionHelper;->mRecentsOrientationByGesturePosition:I

    return-void
.end method


# virtual methods
.method public getRecentsOrientationByGesturePosition(I)I
    .locals 0

    .line 20
    sget p0, Lcom/android/systemui/shared/recents/system/RecentsRotationByUserGesturePositionHelper;->mRecentsOrientationByGesturePosition:I

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->isLeftOrRightPositionGesture(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return p1
.end method

.method public obtainRecentsContainerRotation(I)I
    .locals 0

    .line 28
    sget p0, Lcom/android/systemui/shared/recents/system/RecentsRotationByUserGesturePositionHelper;->mRecentsOrientationByGesturePosition:I

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->isLeftOrRightPositionGesture(I)Z

    move-result p0

    if-nez p0, :cond_0

    return p1

    .line 33
    :cond_0
    sget p0, Lcom/android/systemui/shared/recents/system/RecentsRotationByUserGesturePositionHelper;->mRecentsOrientationByGesturePosition:I

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->isLeftPositionGesture(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    add-int/2addr p1, p0

    .line 39
    rem-int/lit8 p1, p1, 0x4

    return p1
.end method
