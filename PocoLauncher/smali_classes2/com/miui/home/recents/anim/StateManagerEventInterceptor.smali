.class public final Lcom/miui/home/recents/anim/StateManagerEventInterceptor;
.super Ljava/lang/Object;
.source "StateManagerEventInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/anim/StateManagerEventInterceptor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/recents/anim/StateManagerEventInterceptor$Companion;


# instance fields
.field private final homeClickEvent:I

.field private final homeClickEventGroup:[I

.field private isHomeClickRunning:Z

.field private final recentClickEvent:I

.field private final recentClickEventGroup:[I

.field private final resetHomeClickRunningStateRunable:Ljava/lang/Runnable;

.field private final serialEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final serialEventTime:I


# direct methods
.method public static synthetic $r8$lambda$uEVC9pm2ysqubNwlZ9rjIGIc04w(Lcom/miui/home/recents/anim/StateManagerEventInterceptor;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->resetHomeClickRunningStateRunable$lambda-0(Lcom/miui/home/recents/anim/StateManagerEventInterceptor;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/StateManagerEventInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->Companion:Lcom/miui/home/recents/anim/StateManagerEventInterceptor$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 12
    iput v0, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->serialEventTime:I

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->serialEventMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 15
    iput v1, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->homeClickEvent:I

    .line 16
    iput v1, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->recentClickEvent:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 17
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->homeClickEventGroup:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 18
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->recentClickEventGroup:[I

    .line 21
    new-instance v1, Lcom/miui/home/recents/anim/StateManagerEventInterceptor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/anim/StateManagerEventInterceptor$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/anim/StateManagerEventInterceptor;)V

    iput-object v1, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->resetHomeClickRunningStateRunable:Ljava/lang/Runnable;

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 29
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x3e9
        0x3ea
    .end array-data

    :array_1
    .array-data 4
        0x1b5d
        0x1b5e
        0x1b66
    .end array-data
.end method

.method private static final resetHomeClickRunningStateRunable$lambda-0(Lcom/miui/home/recents/anim/StateManagerEventInterceptor;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->isHomeClickRunning:Z

    return-void
.end method


# virtual methods
.method public final checkAllowSendSerialEvent(I)Z
    .locals 13

    .line 38
    iget-boolean v0, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->isHomeClickRunning:Z

    const/4 v1, 0x0

    const-string v2, "StateManagerEventInterceptor"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->homeClickEventGroup:[I

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "checkAllowSendSerialEvent: isHomeClickRunning return"

    .line 39
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->homeClickEventGroup:[I

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget v0, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->homeClickEvent:I

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->recentClickEventGroup:[I

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget v0, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->recentClickEvent:I

    goto :goto_0

    :cond_2
    move v0, p1

    .line 49
    :goto_0
    iget-object v3, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->serialEventMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 50
    iget-object v3, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->serialEventMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 54
    iget-object v3, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->serialEventMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Long;

    const-string v5, "if (serialEventMap[final\u2026nalEvent]!!\n            }"

    .line 50
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v5

    .line 58
    iget v3, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->serialEventTime:I

    int-to-long v11, v3

    cmp-long v3, v9, v11

    if-lez v3, :cond_3

    move v1, v4

    :cond_3
    if-nez v1, :cond_4

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not allow send serial event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",time diff is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ,last = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " cur = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 62
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->serialEventMap:Ljava/util/HashMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v1

    goto :goto_1

    .line 51
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal event check, the serial event needs to be initialized before checking"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return v4
.end method

.method public final getResetHomeClickRunningStateRunable()Ljava/lang/Runnable;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->resetHomeClickRunningStateRunable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final setHomeClickRunning(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/miui/home/recents/anim/StateManagerEventInterceptor;->isHomeClickRunning:Z

    return-void
.end method
