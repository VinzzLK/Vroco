.class final synthetic Lcom/miui/home/recents/gesture/NavStubGestureEventManager$launchActionMap$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "NavStubGestureEventManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/gesture/NavStubGestureEventManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/miui/home/recents/gesture/ConfigItem;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;

    const/4 v1, 0x2

    const-string v4, "launchBroadcast"

    const-string v5, "launchBroadcast(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lcom/miui/home/recents/gesture/ConfigItem;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager$launchActionMap$3;->invoke(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/gesture/NavStubGestureEventManager;->access$launchBroadcast(Lcom/miui/home/recents/gesture/NavStubGestureEventManager;Lcom/miui/home/recents/gesture/ConfigItem;Ljava/lang/String;)V

    return-void
.end method
