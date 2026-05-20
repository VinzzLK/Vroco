.class Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper$1;
.super Ljava/lang/Object;
.source "UserGestureProxyPositionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 29
    invoke-static {}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->access$000()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 30
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->access$102(I)I

    const/4 p0, -0x1

    .line 31
    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->access$202(I)I

    :cond_0
    return-void
.end method
